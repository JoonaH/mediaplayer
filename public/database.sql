CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

CREATE TABLE kappale (id INT PRIMARY KEY, pituus VARCHAR(20), artisti VARCHAR(50), genre VARCHAR(20), nimi VARCHAR(50), linkki VARCHAR(100)); -- luo taulu