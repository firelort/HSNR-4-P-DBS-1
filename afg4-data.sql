-- Ort Mitarbeiter
SELECT ort, count(nr) FROM person GROUP BY ort;

-- Nobert Herrling

SELECT abteilung.name FROM person INNER JOIN abteilung ON abteilung.nr=person.abteilungnr WHERE person.name = "Herrling" AND person.vorname = "Nobert";

-- Durchschnittsalter 

SELECT abteilungnr, round(avg(gehalt), 2) FROM person GROUP BY abteilungnr;
