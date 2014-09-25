DROP DATABASE IF EXISTS mediaplayer;
CREATE DATABASE mediaplayer;
USE mediaplayer;
CREATE TABLE biisi (id INT NOT NULL AUTO_INCREMENT, pituus VARCHAR(20),
 artisti VARCHAR(255), genre VARCHAR(255), nimi VARCHAR(255) NOT NULL,
 linkki VARCHAR(255) NOT NULL, PRIMARY KEY(id));
CREATE TABLE kayttaja (id INT NOT NULL AUTO_INCREMENT,
 kayttaja_nimi VARCHAR(255) NOT NULL, salasana VARCHAR(40) NOT NULL,
 PRIMARY KEY (id), UNIQUE (kayttaja_nimi));
CREATE TABLE soittolista (id INT NOT NULL AUTO_INCREMENT, k_nimi VARCHAR(255) NOT NULL,
 b_id INT NOT NULL, PRIMARY KEY(id),
 FOREIGN KEY(k_nimi) REFERENCES kayttaja(kayttaja_nimi) ON DELETE CASCADE,
 FOREIGN KEY(b_id) REFERENCES biisi(id) ON DELETE CASCADE);

INSERT INTO biisi(pituus, artisti, genre, nimi, linkki)
 VALUES('00:03:44', 'matthew.pablo', 'Orkesteri', 'Soliloquy', 'http://opengameart.org/sites/default/files/Soliloquy_1.mp3');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:03:27', 'Arabesque', 'http://opengameart.org/sites/default/files/Arabesque.mp3');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:01:52', 'Gran', 'http://opengameart.org/sites/default/files/Gran%20Batalla.mp3');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:02:28', 'Carnegieo', 'http://opengameart.org/sites/default/files/Carnegieo.ogg');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:04:18', 'Sigil 3', 'http://opengameart.org/sites/default/files/Sigil_3.ogg');
INSERT INTO biisi(pituus, artisti, genre, nimi, linkki)
 VALUES('00:00:56', 'syncopika', 'Orkesteri', 'Sad orchestral bgm', 'http://opengameart.org/sites/default/files/sadorchestralbgm%28syncopika%29.wav');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:01:04', 'Cat in space', 'http://opengameart.org/sites/default/files/catinspace_hq.mp3');
INSERT INTO biisi(pituus, nimi, linkki)
 VALUES('00:03:44', 'Soliloquy', 'public/media/Soliloquy_1.mp3');

INSERT INTO kayttaja(kayttaja_nimi, salasana)
 VALUES ('Käyttäjä1', 'f1e1c6ea766397606475ab41d7f124258da887b9'); --Salasana: testi
 INSERT INTO kayttaja(kayttaja_nimi, salasana)
 VALUES ('Käyttäjä2', 'f1e1c6ea766397606475ab41d7f124258da887b9'); --Salasana: testi
 INSERT INTO kayttaja(kayttaja_nimi, salasana)
 VALUES ('Käyttäjä3', 'f1e1c6ea766397606475ab41d7f124258da887b9'); --Salasana: testi

INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä1', 3);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä1', 1); 
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä1', 5);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä2', 3);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä3', 1);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä1', 4);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä2', 2);
INSERT INTO soittolista(k_nimi, b_id) VALUES ('käyttäjä3', 3);     
-- GRANT ALL ON mediaplayer.* TO 'mediaplayer'@'localhost' IDENTIFIED BY 'test1234'; --Loin tällä käyttäjän ja annoin valtuudet