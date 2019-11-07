DROP TABLE IF EXISTS ethnicity;
DROP TABLE IF EXISTS mergedData;
DROP TABLE IF EXISTS mergedData2;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS zip;


CREATE TABLE ethnicity (
	neighborhood VARCHAR NOT NULL PRIMARY KEY,
	White INT,
	Hisp INT,
	Black INT,
	Asian INT,
	Other INT
);

CREATE TABLE zip (
	neighborhood VARCHAR NOT NULL PRIMARY KEY,
	zip VARCHAR NOT NULL 
);

CREATE TABLE mergedData (
	neighborhood VARCHAR NOT NULL PRIMARY KEY,
	White INT,
	Hisp INT,
	Black INT,
	Asian INT,
	Other INT,
	zip VARCHAR 	
);

COPY ethnicity(neighborhood,white,Hisp,Black,Asian,Other)
FROM 'C:\Users\Owner\BootCampData\Project_2\SQLData\importSQLethnicity.csv' DELIMITER ',' CSV HEADER;

COPY zip(neighborhood,zip)
FROM 'C:\Users\Owner\BootCampData\Project_2\SQLData\importSQLzip.csv' DELIMITER ',' CSV HEADER;

COPY mergedData (neighborhood,White,Hisp,Black,Asian,Other,zip)
FROM 'C:\Users\Owner\BootCampData\Project_2\SQLData\importSQLmerged1.csv' DELIMITER ',' CSV HEADER;

SELECT * from ethnicity;
SELECT * from zip;
SELECT * from mergedData;
