SELECT *
FROM crime_scene_report
WHERE type = 'murder' AND date = 20180115 AND city = 'SQL City';

SELECT *
FROM person AS p
WHERE address_street_name LIKE '%Northwestern Dr%'
ORDER BY address_number desc
LIMIT 1;

SELECT *
FROM person AS p
WHERE address_street_name LIKE 'Franklin Ave'
AND name LIKE '%Annabel%'
LIMIT 1;

SELECT *
FROM interview
WHERE person_id IN (14887, 16371);

SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';

SELECT *
FROM person
WHERE license_id = '423327' OR license_id = '664760';

SELECT *
FROM get_fit_now_member
WHERE person_id = '51739' OR person_id = '67318';

SELECT *
FROM interview
WHERE person_id = 67318;

SELECT *
FROM drivers_license
WHERE car_make = 'Tesla' AND car_model = 'Model S' AND gender = 'female' AND hair_color = 'red';

SELECT *
FROM person
WHERE license_id = '202298' OR license_id = '291182' OR license_id = '918773';

SELECT person_id, count(*), event_name
FROM facebook_event_checkin
GROUP BY person_id
having count(*) = 3 AND event_name = 'SQL Symphony Concert' AND date LIKE '%201712%';