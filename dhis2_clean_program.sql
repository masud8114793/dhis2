
DELETE FROM program_organisationunits where programid in (23472,25030,62198)
DELETE FROM program_userroles where programid in (23472,25030,62198)

delete 
from trackedentityattributevalueaudit
where trackedentityattributeid
in
(
select trackedentityattributeid
from program_attributes where programid in (23472,25030,62198)
)


delete from trackedentitydatavalueaudit
where programstageinstanceid
in
(
SELECT
	programstageinstanceid
FROM
	programstageinstance
WHERE
	programstageid IN (
		SELECT
			programstageid
		FROM
			programstage
		WHERE
			programid IN (23472, 25030, 62198)
	)
)


delete from trackedentitydatavalue
where programstageinstanceid
in
(
SELECT
	programstageinstanceid
FROM
	programstageinstance
WHERE
	programstageid IN (
		SELECT
			programstageid
		FROM
			programstage
		WHERE
			programid IN (23472, 25030, 62198)
	)
)

delete
from programstageinstance
where programinstanceid in
(
select programinstanceid FROM programinstance where programid in (23472,25030,62198)
)

DELETE FROM programinstance where programid in (23472,25030,62198)

DELETE 
FROM
	programstagedataelement 
WHERE
	programstageid IN (
		SELECT
			programstageid
		FROM
			programstage
		WHERE
			programid IN (23472, 25030, 62198)
	)

DELETE FROM programstagesection_dataelements
WHERE programstagesectionid IN 
(
SELECT programstagesectionid 
FROM
	programstagesection 
WHERE
	programstageid IN (
		SELECT
			programstageid
		FROM
			programstage
		WHERE
			programid IN (23472, 25030, 62198)
	)
)

DELETE 
FROM
	programstagesection 
WHERE
	programstageid IN (
		SELECT
			programstageid
		FROM
			programstage
		WHERE
			programid IN (23472, 25030, 62198)
	)


DELETE FROM programstage where programid in (23472,25030,62198)

DELETE FROM program_attributes where programid in (23472,25030,62198)

DELETE FROM program where programid in (23472,25030,62198)

