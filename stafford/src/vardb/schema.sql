PRAGMA journal_mode = OFF;
PRAGMA synchronous = OFF;
PRAGMA temp_store = memory;
PRAGMA mmap_size = 30000000000;
PRAGMA page_size = 32768;

CREATE TABLE IF NOT EXISTS muts (
    mutid integer PRIMARY KEY autoincrement NOT NULL,
    chr text NOT NULL,
    pos integer NOT NULL,
    ref text NOT NULL,
    alt text NOT NULL,
    UNIQUE (chr, pos, ref, alt)
);

-- create trigger pos_nat_insert
--   before insert on muts
-- begin
--   select case
--     when NEW.pos < 0 then
--     raise (ABORT, "POS must be non-negative")
--   end;
-- end;
-- create trigger pos_nat_update
--   before update on muts
-- begin
--   select case
--     when NEW.pos < 0 then
--     raise (ABORT, "POS must be non-negative")
--   end;
-- end;


CREATE TABLE IF NOT EXISTS hgvs_ps (
    mutid integer NOT NULL,
    transcriptid text NOT NULL,
    transcriptver int NOT NULL,
    hgvs_p text NOT NULL,
    PRIMARY KEY (mutid, transcriptid, transcriptver),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS hgvs_cs (
    mutid integer NOT NULL,
    transcriptid text NOT NULL,
    transcriptver int NOT NULL,
    hgvs_c text NOT NULL,
    PRIMARY KEY (mutid, transcriptid, transcriptver),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS annotations (
    mutid integer NOT NULL,
    transcriptid text NOT NULL,
    transcriptver int NOT NULL,
    annotation NOT NULL,
    PRIMARY KEY (mutid, transcriptid, transcriptver),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS impacts (
    mutid integer NOT NULL,
    transcriptid text NOT NULL,
    transcriptver int NOT NULL,
    impact NOT NULL,
    PRIMARY KEY (mutid, transcriptid, transcriptver),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS samples (
    sampleid integer PRIMARY KEY autoincrement NOT NULL,
    donor text NOT NULL,
    siteid text NOT NULL,
    UNIQUE (donor, siteid)
);

CREATE TABLE IF NOT EXISTS calls (
    haplotypeid integer NOT NULL,
    mutid integer NOT NULL,
    primary key (haplotypeid, mutid),
    FOREIGN KEY (haplotypeid) REFERENCES haplotypes (haplotypeid) ON DELETE CASCADE,
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS haplotypes (
    haplotypeid integer PRIMARY KEY autoincrement NOT NULL,
    hapindex integer NOT NULL,
    sampleid integer NOT NULL,
    phasegroup integer NOT NULL,
    somatic bool NOT NULL,
    UNIQUE (sampleid, hapindex, phasegroup),
    FOREIGN KEY (sampleid) REFERENCES samples (sampleid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS allelefrequencies (
    mutid integer NOT NULL,
    sampleid integer NOT NULL,
    frequency real NOT NULL,
    PRIMARY KEY (mutid, sampleid),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE,
    FOREIGN KEY (sampleid) REFERENCES samples (sampleid) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS allelecounts (
    mutid integer NOT NULL,
    sampleid integer NOT NULL,
    count integer NOT NULL,
    depth integer NOT NULL,
    PRIMARY KEY (mutid, sampleid),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE,
    FOREIGN KEY (sampleid) REFERENCES samples (sampleid) ON DELETE CASCADE
);

-- create trigger af_bounded_insert
--   before insert on allelefrequencies
-- begin
--   select case
--     when NEW.frequency < 0 or NEW.frequency > 1 then
--     raise (ABORT, 'AF out of range [0,1]')
--   end;
-- end;
-- create trigger af_bounded_update
--   before update on allelefrequencies
-- begin
--   select case
--     when NEW.frequency < 0 or NEW.frequency > 1 then
--     raise (ABORT, 'AF out of range [0,1]')
--   end;
-- end;
CREATE TABLE IF NOT EXISTS haplotypefrequencies (
    haplotypeid integer PRIMARY KEY NOT NULL,
    frequency real NOT NULL,
    FOREIGN KEY (haplotypeid) REFERENCES haplotypes (haplotypeid) ON DELETE CASCADE
);

-- create trigger hf_bounded_insert
--   before insert on haplotypefrequencies
-- begin
--   select case
--     when NEW.frequency < 0 or NEW.frequency > 1 then
--     raise (ABORT, 'HF out of range [0,1]')
--   end;
-- end;
-- create trigger hf_bounded_update
--   before update on haplotypefrequencies
-- begin
--   select case
--     when NEW.frequency < 0 or NEW.frequency > 1 then
--     raise (ABORT, 'HF out of range [0,1]')
--   end;
-- end;
CREATE TABLE IF NOT EXISTS callfilters (
    mutid integer NOT NULL,
    sampleid integer NOT NULL,
    filter text NOT NULL,
    PRIMARY KEY (mutid, sampleid, filter),
    FOREIGN KEY (mutid) REFERENCES muts (mutid) ON DELETE CASCADE,
    FOREIGN KEY (sampleid) REFERENCES samples (sampleid) ON DELETE CASCADE
);
