/* Table with 9 different attributes. Combination of Protein Name and GenBank Accession number used as Primary Key
    Cannot populate the table with relative pathway for file even if I'm in the directory. Not sure how to fix.
    Right now I just have it pointing to the exact pathway, which can be changed
*/

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

/* Since the accession number is what we will primarily be using to link the databases it is used as a primary key. 
    However, since there can be different proteins from the same experiment, we needed to include both as a key. I will
    be creating an index to make searches quicker.
*/

CREATE INDEX protein_seg_length
    ON Influenza(protein, seg_length);