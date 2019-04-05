CREATE TABLE Influenza(
    protein VARCHAR,
    accession VARCHAR,
    complete VARCHAR,
    segment INTEGER,
    seg_length INTEGER,
    subtype VARCHAR,
    collected VARCHAR,
    state_prov TEXT,
    strain VARCHAR,
    PRIMARY KEY(protein,accession)
);

COPY Influenza
FROM '/Users/danielwright/BINF6211Project/influenza_final_dat.txt'
WITH(FORMAT CSV, DELIMITER E'\t', HEADER);

