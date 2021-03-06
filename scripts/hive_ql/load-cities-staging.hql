-- create CITIES staging TABLE and load data

USE earthquakes;
DROP TABLE IF EXISTS cities_stage;

-- step 1-2 create staging table

CREATE TABLE IF NOT EXISTS cities_stage
(
  name string,
  name_ascii string,
  latitude double,
  longitude double,
  country string,
  iso2 string,
  iso3 string,
  admin string,
  capital string,
  population int,
  id string
  )
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- step 2-2 load data into staging table

LOAD DATA INPATH ${path} OVERWRITE INTO TABLE cities_stage;