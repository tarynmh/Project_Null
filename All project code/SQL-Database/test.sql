CREATE TABLE "Users"
(
	ID INTEGER PRIMARY KEY NOT NULL  --each user has a unique id--
	USERNAME VARCHAR(50)
	EMAIL VARCHAR(50)
	PASSWORD VARCHAR(50)   --encrypt password--
	--add teams, up to 5(?) reference table in another table?--

);

CREATE TABLE "Pokemon"
(	
	PkmnKey VARCHAR(800) PRIMARY KEY NOT NULL,
	POKEMON_ID		INTEGER,
	Pkmn_Name		CHAR(50),
	Type_1		    CHAR(10),
	Type_2		    CHAR (10),
	Total           INTEGER,
	HP              INTEGER,
	Attack			INTEGER,
	Defense			INTEGER,
	Sp_Attack	    INTEGER,
	Sp_Defense	    INTEGER, 
	Speed			INTEGER,
	Generation		INTEGER,
	Legendary   	BOOLEAN 
);

INSERT INTO 

/*
LOAD DATA INFILE 'pokemon.csv'
INTO TABLE pokemon
FIELDS TERMINATED BY ','
ENCLOSED BY '""'
LINES TERMINATED BY '\N'
*/