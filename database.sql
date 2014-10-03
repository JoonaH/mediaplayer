DROP DATABASE IF EXISTS mediaplayer;
CREATE DATABASE mediaplayer;
USE mediaplayer;
CREATE TABLE biisi (bid INT NOT NULL AUTO_INCREMENT, pituus VARCHAR(20),
 artisti VARCHAR(255), genre VARCHAR(255), nimi VARCHAR(255) NOT NULL,
 linkki VARCHAR(255) NOT NULL, PRIMARY KEY(bid));
CREATE TABLE kayttaja (kid INT NOT NULL AUTO_INCREMENT,
 kayttaja_nimi VARCHAR(255) NOT NULL, salasana VARCHAR(40) NOT NULL,
 PRIMARY KEY (kid));
CREATE TABLE soittolista (sid INT NOT NULL AUTO_INCREMENT, k_id INT NOT NULL,
 b_id INT NOT NULL, PRIMARY KEY(sid),
 FOREIGN KEY(k_id) REFERENCES kayttaja(kid) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY(b_id) REFERENCES biisi(bid) ON DELETE CASCADE ON UPDATE CASCADE);

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
 VALUES ('Käyttäjä1', 'f1e1c6ea766397606475ab41d7f124258da887b9'); 
INSERT INTO kayttaja(kayttaja_nimi, salasana)
 VALUES ('Käyttäjä2', 'f1e1c6ea766397606475ab41d7f124258da887b9');
INSERT INTO kayttaja(kayttaja_nimi, salasana)
 VALUES ('Käyttäjä3', 'f1e1c6ea766397606475ab41d7f124258da887b9');

INSERT INTO soittolista(k_id, b_id) VALUES (1, 3);
INSERT INTO soittolista(k_id, b_id) VALUES (1, 1); 
INSERT INTO soittolista(k_id, b_id) VALUES (1, 5);
INSERT INTO soittolista(k_id, b_id) VALUES (2, 3);
INSERT INTO soittolista(k_id, b_id) VALUES (3, 1);
INSERT INTO soittolista(k_id, b_id) VALUES (1, 4);
INSERT INTO soittolista(k_id, b_id) VALUES (2, 2);
INSERT INTO soittolista(k_id, b_id) VALUES (3, 3);
-- GRANT ALL ON mediaplayer.* TO 'mediaplayer'@'localhost' IDENTIFIED BY 'test1234'; --Loin tällä käyttäjän ja annoin valtuudet
-- Käyttäjien salasana: testi