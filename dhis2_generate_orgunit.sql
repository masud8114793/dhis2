SELECT
e.id as organisationunitid,
e.org_id as uid,
e.org_name as 'name',
e.org_short_name as shortname,
e.hrm_code as 'code',
m.id as parentid,
e.`level` as hierarchylevel,
50 as userid,
now()	created,
now() as lastupdated,
'2012-01-01' as openingdate,
50 as lastupdatedby 
FROM `dhis2_organization_cc` e 
LEFT OUTER JOIN  dhis2_organization_cc m on e.parent_id = m.org_id 

