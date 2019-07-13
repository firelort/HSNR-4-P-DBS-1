-- Create Import Table
CREATE TABLE import(
	nr varchar,
	ort varchar,
	geburt varchar,
	name varchar,
	vorname varchar,
	abteilungname varchar,
	abteilungnr varchar,
	gehalt varchar
);

-- Create Abteilung Table
CREATE TABLE abteilung(
	nr varchar PRIMARY KEY,
	name varchar
);

-- Create Person Table
CREATE TABLE person(
	nr integer PRIMARY KEY,
	name varchar,
	vorname varchar,
	geburt date,
	abteilungnr varchar REFERENCES abteilung(nr),
	gehalt numeric(10,2),
	ort varchar
);
