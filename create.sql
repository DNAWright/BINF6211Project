sudo sort -u '/Users/danielwright/BINF6211Project/influenza_2000_human_usa_text.txt' > 

CREATE TABLE Influenza(
    protein VARCHAR,
    accession VARCHAR,
    complete VARCHAR,
    segment INTEGER,
    seg_length INTEGER,
    subtype VARCHAR,
    collected VARCHAR,
    species VARCHAR,
    country TEXT,
    state_prov TEXT,
    season VARCHAR,
    strain VARCHAR,
    PRIMARY KEY(protein,accession)
);


COPY Influenza
FROM '/Users/danielwright/BINF6211Project/influenza_clean_dat2.txt'
WITH(FORMAT CSV, DELIMITER E'\t', HEADER);