library(shiny)

args = commandArgs(trailingOnly=TRUE)
if (length(args) != 6) {
  stop("Invalid args. Need:
       plot-functions.r, facets dir, gridss vcf, chrlen, gene tbl, cosmic db",
       call.=FALSE)
}
PLOT_FUNCTIONS = args[1]
FACETS  = args[2]
GRIDSS  = args[3]
CHR_LEN = args[4]
GENES   = args[5]
COSMIC  = args[6]

# e.g.
# PLOT_FUNCTIONS = "/home/users/allstaff/doig.l/work/stafford/src/ecDNAPlots/plot-functions.r"
# FACETS = "/nix/store/wkyal1dwx24bq18ygpa3i0xpx2kggzgw-link-outputs"
# GRIDSS = "/nix/store/q7h9161x1bxpp7pxici9b19li6npkmwd-bionix-gridss-somatic"
# CHR_LEN = "/nix/store/4xdc37djaini0vv8jzhh74pxrixnq8xs-bionix-chromlen"
# GENES = "/nix/store/bxp8jdxlhdqq8hna9m14kq9v2k6m2w9r-bionix-fetch-gene-locations"
# COSMIC = "/nix/store/a7phvqbbn7cj4559a7rj2lj539isj25a-bionix-cosmic"

source(PLOT_FUNCTIONS)
data = load_data(FACETS, GRIDSS, CHR_LEN, GENES, COSMIC)
if (is.null(data)) {
  message("Empty VCF, aborting")
  quit(save = "no")
}
palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
SV_CATEGORIES = c("intra segmental", "inter segmental", "inter chromosomal")

ui = fluidPage(
  headerPanel('Interactive ecDNA Visualisation'),
  sidebarPanel(
    checkboxGroupInput('samples',
                       label = 'Samples',
                       choices = names(data$cn_dfs),
                       selected = names(data$cn_dfs)),
    numericInput('min_CN', label = 'Minimum CN for focal CNV',
                 value = 10, min = 1, max = 100),
    numericInput('min_seg_size_KB',
                 label ='Min width for focal CNV (KB)',
                 value = 100, min = 10, max = 10000),
    numericInput('min_SV_qual',
                 label ='Min quality score for SVs',
                 value = 0, min = 0, max = 10000),
    sliderInput('min_AF', label ='Min allele frequency for SVs',
                value = 0, min = 0, max = 1),
    textInput('exclusions', label = 'Segments to exclude e.g. "3, Xa"'),
    textInput('inclusions', label = 'Segments to include (only) e.g. "2b, 17"'),
    actionButton('update_segs', label = 'Update segments'),
    checkboxGroupInput('SV_types', label = "SV types",
                       choices = SV_CATEGORIES,
                       selected = SV_CATEGORIES),
    checkboxInput('include_genes', label = "Include genes", value = F),
    checkboxInput('cosmic_only', label = "Include cosmic genes only", value = F),
    sliderInput('gene_font_size', label = 'Gene label fontsize',
                value = 0.75, min = 0.1, max = 4),
    sliderInput('gene_padding', label = 'Gene label padding',
                value = 0.7, min = 0, max = 2.4),
    sliderInput('gene_track_height', label = 'Gene track width',
                value = 0.6, min = 0.05, max = 1),
    sliderInput('chr_label_size', label = 'Chr label fontsize',
                value = 1.85, min = 0.1, max = 4),
    sliderInput('genome_scale_size', label = 'Scale fontsize',
                value = 1, min = 0.1, max = 4),
    textInput('filename', label = 'Filename used to save plot'),
    actionButton('save', label = 'Save plot'),
    width = 2
  ),
  mainPanel(
    plotOutput('plot'),
    width = 10
  )
)


server = function(input, output, session) {

  save = reactiveVal(FALSE)
  observeEvent(input$save, {save(TRUE)})

  amplicons = reactive({
    validate(
      need(!is.null(input$samples), "Please select at least one sample")
    )
    generate_amplicons(data$cn_dfs,
                       data$gene_df,
                       data$chr_len,
                       samples=input$samples,
                       min_CN=input$min_CN,
                       min_seg_size=input$min_seg_size_KB * 1000)
  })

  amplicon_SVs = reactive({
    get_amplicon_SVs(data$bedpe, amplicons())
  })

  update_segs = reactiveVal(FALSE)
  observeEvent(input$update_segs, {update_segs(TRUE)})
  selected_segments = reactiveValues(inclusions = "", exclusions = "")

  observeEvent(amplicons(), {
    selected_segments$inclusions = ""
    selected_segments$exclusions = ""
    updateTextInput(session = session, inputId = 'inclusions', value = "")
    updateTextInput(session = session, inputId = 'exclusions', value = "")
    updateCheckboxGroupInput(session = session,
                             inputId = 'SV_types',
                             choices = SV_CATEGORIES,
                             selected = SV_CATEGORIES)
  })

  observeEvent(input$patient, {
    updateCheckboxGroupInput(session = session,
                             inputId = 'samples',
                             choices = get_samples(input$patient),
                             selected = get_samples(input$patient))
  })

  output$plot = renderPlot({

    plot = reactive({
      message("plotting")
      validate(
        need(!is.null(amplicons()), "No amplicons found")
      )
      validate(
        need(
          plot.circos(amplicons(), amplicon_SVs(), selected_segments,
                      genome_scale_size = input$genome_scale_size,
                      chr_label_size = input$chr_label_size,
                      min_SV_qual = input$min_SV_qual,
                      min_AF = input$min_AF,
                      SV_types = input$SV_types,
                      include_genes = input$include_genes,
                      cosmic_only = input$cosmic_only,
                      gene_padding = input$gene_padding,
                      gene_track_height = input$gene_track_height,
                      gene_font_size = input$gene_font_size),
          "All segments excluded")
      )
    })

    if (save()) {
      message(paste0("saving as ", input$filename))
      plot.circos(amplicons(), amplicon_SVs(), selected_segments,
                  genome_scale_size = input$genome_scale_size,
                  chr_label_size = input$chr_label_size,
                  min_SV_qual = input$min_SV_qual,
                  min_AF = input$min_AF,
                  SV_types = input$SV_types,
                  include_genes = input$include_genes,
                  cosmic_only = input$cosmic_only,
                  gene_padding = input$gene_padding,
                  gene_track_height = input$gene_track_height,
                  gene_font_size = input$gene_font_size,
                  save_as = input$filename)
      save(FALSE)
    }
    if (update_segs()) {
      message("updating plot segs")
      selected_segments$inclusions = input$inclusions
      selected_segments$exclusions = input$exclusions
      update_segs(FALSE)
    }

    plot()
  },
  width = 1000,
  height = 1000,
  res = 70
  )
}

start_time = Sys.time()
message("running app")
runApp(shinyApp(ui = ui, server = server))
