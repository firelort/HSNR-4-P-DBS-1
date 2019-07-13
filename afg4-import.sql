-- Copy Data to Abteilung
INSERT INTO abteilung (nr, name) SELECT DISTINCT abteilungnr, abteilungname FROM import;

-- Copy Data to Personen
INSERT INTO person (nr, name, vorname, geburt, abteilungnr, gehalt, ort) SELECT DISTINCT CAST(nr AS INTEGER), name, vorname, to_date(geburt, 'DD.MM.YYYY'), abteilungnr, CAST(gehalt AS NUMERIC(10,2)), ort FROM import;
