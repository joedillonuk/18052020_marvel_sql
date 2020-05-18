DROP TABLE lighsabers;
DROP TABLE characters;

CREATE TABLE characters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers(
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL,
  character_id INT REFERENCES characters(id)
);


-- SELECT * FROM lightsabers WHERE owner_name = 'Obi-Wan Kenobi';

-- Select all from table
SELECT * FROM characters;

INSERT INTO characters(name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters(name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters(name, darkside) VALUES ('Yoda', false);

INSERT INTO lightsabers(colour, hilt_metal, character_id) VALUES ('green', 'palladium', 4);
INSERT INTO lightsabers(colour, hilt_metal, character_id) VALUES ('red', 'gold', 3);
INSERT INTO lightsabers(colour, holt_metal, character_id) VALUES ('blue', 'titanium', 4);

-- INSERT INTO characters(name, darkside, age) VALUES ('Luke Skywalker', false, 17);
--
--
-- -- Read
-- SELECT * FROM characters;
-- SELECT name FROM characters;
-- SELECT COUNT(*) FROM characters;
--
-- -- Update
-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
-- -- UPDATE characters SET darkside = true;
-- SELECT * FROM characters;
--
-- -- UPDATE characters SET (name, darkside) = ('Darth Vader', true);
-- UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';
-- SELECT * FROM characters;
--
-- -- Delete
-- DELETE FROM characters WHERE name = 'Darth Maul';
-- -- DELETE FROM characters; Would delete entire table
-- SELECT * FROM characters;
--
--
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
--
-- SELECT * FROM characters;
--
-- UPDATE characters SET age = 29 WHERE id = 10;
SELECT * FROM characters;
SELECT * FROM lightsabers;
