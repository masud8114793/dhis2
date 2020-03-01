--delete from orgunitgroupmembers
--delete from orgunitgroupsetmembers
--delete from reporttable_itemorgunitgroups
--delete from mapview_itemorgunitgroups
--delete from orgunitgroup
--delete from completedatasetregistration
--delete from datasetsource
--delete from datavalue
--delete from datavalueaudit
--delete from reporttable_organisationunits
--delete from userdatavieworgunits
--delete from usermembership
--delete from chart_organisationunits
--delete from mapview_organisationunits
--delete from program_organisationunits

--delete from trackedentitydatavalueaudit
--delete from trackedentitydatavalue
--delete from programstageinstance
--delete from programinstance
--delete from trackedentityattributevalue
--delete from trackedentityinstance
delete from organisationunit

delete from orgunitgroupmembers
WHERE organisationunitid=4528

delete from organisationunit
WHERE organisationunitid=4528