--Create table for animals
CREATE TABLE "animals" (
Species TEXT NOT NULL,
Name TEXT  PRIMARY KEY,
Age INTEGER,
Was_fed INTEGER,
Favorite_Food TEXT
);

--Populate tabel withg animals
INSERT INTO "animals"(species,name,age,was_fed,favorite_food)
VALUES 
("Diceros bicornis","Black Rhino",5,0,"Bamboos"),
("Cheloniidae and Dermochelyidae families","Sea_Turtle",24,1," Crab" ),
("Panthera tigris","Tiger",2,0,"Deer"),
("Balaenoptera","Whale",17,1,"Fish"),
("Ursus maritimus","Polar Bear",3,0,"Fish"),
("Felidae","Cat",1,1,"Chicken");

--Update cat years
UPDATE "animals"
SET age = 2
WHERE name = 'Cat';

--Remove tiger from the table
DELETE FROM "animals"
WHERE name="Tiger";

--Remove favorite Food coulumn 
ALTER TABLE "animals" DROP COLUMN Favorite_Food;

--Add an origin column
ALTER TABLE "animals" ADD COLUMN Origin TEXT ;

--ADd city for animals
UPDATE "animals"
SET origin="Ireland"
WHERE name="Polar Bear";

UPDATE "animals"
SET origin="Berlin"
WHERE name="Whale";

UPDATE "animals"
SET origin="Boston"
WHERE name="Cat";

--CHallenge
UPDATE "animals"
SET Was_fed=1;
