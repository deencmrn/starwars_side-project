--DROP TABLE star_wars_character;
--DROP TABLE title;
--DROP TABLE planet;

BEGIN TRANSACTION;



CREATE TABLE star_wars_character (

        character_id serial NOT NULL,
        title_id int NOT NULL,
        planet_id int NOT NULL,
        first_name varchar (45) NOT NULL,
        last_name varchar (45) NULL,
        date_born varchar (45) NULL,
        date_died varchar (45) NULL,

CONSTRAINT pk_star_wars_character PRIMARY KEY (character_id)
);

CREATE TABLE title (

        title_id serial NOT NULL,
        jedi varchar (10) NOT NULL,
        sith varchar (10) NOT NULL,


CONSTRAINT pk_title PRIMARY KEY (title_id)

);

CREATE TABLE planet (

        planet_id serial NOT NULL,
        planet_name varchar (45) NULL,
        
        CONSTRAINT pk_planet PRIMARY KEY (planet_id)
);


ALTER TABLE star_wars_character
        ADD CONSTRAINT fk_star_wars_character_planet
        FOREIGN KEY (planet_id) REFERENCES planet (planet_id);

COMMIT;

--added 1/13/21
ALTER TABLE star_wars_character
        ADD CONSTRAINT fk_star_wars_character_title
        FOREIGN KEY (title_id) REFERENCES title (title_id);


--inserting planet names below



INSERT INTO planet (planet_name)
VALUES ('TATOOINE');

INSERT INTO planet (planet_name)
VALUES ('ALDERAAN');

INSERT INTO planet (planet_name)
VALUES ('NABOO');

INSERT INTO planet (planet_name)
VALUES ('CORELLIA');

INSERT INTO planet (planet_name)
VALUES ('CHANDRILA');

INSERT INTO planet (planet_name)
VALUES ('STEWJON');

INSERT INTO planet (planet_name)
VALUES ('CORUSCANT');

INSERT INTO planet (planet_name)
VALUES ('JAKKU');

INSERT INTO planet (planet_name)
VALUES ('UNKNOWN');

--inserting title information below

INSERT INTO title (jedi, sith)
VALUES ('YES', 'NO');

INSERT INTO title (jedi, sith)
VALUES ('NO', 'YES');

INSERT INTO title (jedi, sith)
VALUES ('YES', 'YES');

INSERT INTO title (jedi, sith)
VALUES ('NO', 'NO');


-- inserting character information below

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'YES' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'TATOOINE'), 'ANAKIN "DARTH VADER"', 'SKYWALKER', '19BBY', '34ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'NO'), (SELECT planet_id FROM planet WHERE planet_name = 'NABOO'), 'PADME', 'AMIDALA', '46BBY', '19BBY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'TATOOINE'), 'LUKE', 'SKYWALKER', '19BBY', '34ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'ALDERAAN'), 'LEIA', 'ORGANA', '19BBY', '35ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'NO'), (SELECT planet_id FROM planet WHERE planet_name = 'CORELLIA'), 'HAN', 'SOLO', '32BBY', '34ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'YES' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'CHANDRILA'), 'BEN, "KYLO REN"', 'SOLO', '5ABY', '35ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'STEWJON'), 'OBI-WAN "BEN"', 'KENOBI', '57BBY', '0BBY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'CORUSCANT'), 'QUI-GON', 'JINN', 'c.80BBY', '32BBY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'UNKNOWN'), 'YODA', NULL, '896BBY', '4ABY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'YES' AND jedi = 'NO'), (SELECT planet_id FROM planet WHERE planet_name = 'NABOO'), 'SHEEV "DARTH SIDIOUS"', 'PALPATINE', 'c.84BBY', '4ABY, 35ABY');

--INSERT PLANET, FORGOT

INSERT INTO planet (planet_name)
VALUES ('SERRENO');

-- CONTINUE ADDING TO CHARACTER TABLE


INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'YES' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'SERRENO'), 'DOOKU', NULL, '102BBY', '19BBY');

INSERT INTO star_wars_character (title_id, planet_id, first_name, last_name, date_born, date_died)
VALUES ((SELECT title_id FROM title WHERE sith = 'NO' AND jedi = 'YES'), (SELECT planet_id FROM planet WHERE planet_name = 'JAKKU'), 'REY "PALPATINE"', 'SKYWALKER', '15ABY', '35ABY*');





