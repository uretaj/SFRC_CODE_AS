BEGIN {
    FS = ","
    print "["
}

function find(pattern, file, cmd){
    cmd = "find . -name " pattern "\\*.fastq.gz"
    cmd | getline file
    close(cmd)
    return(file)
}

function hash(file, h, cmd){
    cmd = "sha512sum " file " | awk '{print $1}'"
    cmd | getline h
    close(cmd)
    return(h)
}

{
    if((file=find($3)) == "") next;
    printf("{AGRFLabel = \"%s\"; fastq = \"%s\"; sha512 = \"%s\"; treatment = \"%s\"; group = \"%s\";}\n",
           $3,
           file,
           hash(file),
           tolower($2),
           $1)
}

END{
    print "]"
}
