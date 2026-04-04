

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

select * from observations limit 10;

select DISTINCT id from regions;

select COUNT (DISTINCT  id) from species;

select  count(region_id) from observations where region_id == 2;

select   count(observation_date) from observations where observation_date = '1998-08-08';





select region_id,count(*) as observaciones from observations group by region_id order by observaciones desc ;

select species_id,count(*) as especies from observations group by species_id order by especies desc limit 5 ;

select species_id,count(*) as especies from observations group by species_id having especies < 5 order by especies desc;

select observer ,count(*) as observaciones from observations group by observer order by observaciones desc ;




SELECT observations.id, regions.name AS nombre_region, observations.observation_date from observations JOIN regions ON observations.region_id = regions.id;

SELECT species.id, species.scientific_name AS nombre_especie from observations JOIN species ON observations.species_id = species.id;

select regions.name as region,species.scientific_name,count (*) as total from observations join species on observations.species_id = species.id join regions on observations.region_id = regions.id group by region,species.scientific_name order by region,total desc;


INSERT INTO observations (species_id,region_id,observer,observation_date,count) values (6 , 3, 'tecnico de sistemas','2027-04-05',5);

UPDATE species set scientific_name = 'Enicognathus ferrugineuss' where scientific_name = 'Enicognathus ferrugineus';

delete from observations where id = 543;