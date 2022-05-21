-----table
create table crash(
  eid bigint not NULL unique,
cdate varchar(200),
  borough varchar(200),
ctime varchar(200),
);

-- /upload data
\copy crime_db (eid, cdate, borough, ctime ) FROM '/Users/pamwongkraivet/Desktop/caraccident_db.csv' DELIMITER ',' CSV HEADER

--- table for injure
create table injure(
  eid bigint not NULL unique,
  cdate varchar(200),
ninjured  varchar(200),
  nkill varchar(200),
cfv varchar(200),
);

\copy crime_db (eid, cdate, ninjured, nkill,cfv ) FROM '/Users/pamwongkraivet/Desktop/car caraccident_db.csv' DELIMITER ',' CSV HEADER

--find the total number of car caraccident_db recorded in the car accident table
select count(*) from caraccident_db;

---Retrieve first 10 rows from the Car accient table
select * from crash fetch first 10 rows only;
select * from injure fetch first 10 rows only;

----lastest recorded
SELECT * FROM crash ORDER BY ID DESC LIMIT 1;
SELECT * FROM injure ORDER BY ID DESC LIMIT 1;
