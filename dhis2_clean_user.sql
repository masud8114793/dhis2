delete FROM userrolemembers where userid>100;
delete FROM previouspasswords where userid>100;
delete FROM "users" where userid>100;
delete FROM usergroupmembers where userid>100;
delete FROM usermembership where userinfoid>100;
delete FROM userdatavieworgunits where userinfoid>100;
delete FROM usersetting where userinfoid>100;
delete FROM "programstageuseraccesses" where useraccessid>100;

DELETE FROM programstageuseraccesses WHERE programstageuseraccesses.useraccessid IN (SELECT useraccessid FROM useraccess WHERE	userid > 100);

DELETE FROM dashboarduseraccesses WHERE	dashboarduseraccesses.useraccessid IN (	SELECT	useraccessid	FROM useraccess	WHERE userid > 100	);

DELETE FROM programuseraccesses WHERE	programuseraccesses.useraccessid IN (	SELECT	useraccessid	FROM useraccess	WHERE userid > 100	);

DELETE FROM datasetuseraccesses WHERE	datasetuseraccesses.useraccessid IN (	SELECT	useraccessid	FROM useraccess	WHERE userid > 100	);

delete FROM useraccess where userid>100;

DELETE FROM chart_datadimensionitems WHERE	chart_datadimensionitems.chartid 
IN (	SELECT	chartid	FROM chart	WHERE userid > 100	);


DELETE FROM chart_organisationunits WHERE chart_organisationunits.chartid 
IN (SELECT chartid FROM chart	WHERE userid > 100);

DELETE	FROM	chart_filters	WHERE	chart_filters.chartid 
IN (SELECT	chartid	FROM	chart	WHERE	userid > 100);

DELETE	FROM	chart_periods	WHERE	chart_periods.chartid 
IN (SELECT	chartid	FROM	chart	WHERE	userid > 100);


DELETE	FROM	dashboard_items	where dashboarditemid in
(select dashboarditemid	from dashboarditem	WHERE	
dashboarditem.chartid IN (SELECT	chartid	FROM	chart
WHERE	userid > 100));


DELETE	from dashboarditem	WHERE	dashboarditem.chartid 
IN (SELECT	chartid	FROM	chart	WHERE	userid > 100);

DELETE	FROM chart_orgunitlevels WHERE	chart_orgunitlevels.chartid 
IN (SELECT	chartid	FROM	chart	WHERE	userid > 100);

delete FROM chart where userid>100;

DELETE	from dashboard_items	WHERE	dashboard_items.dashboardid 
IN (SELECT	dashboardid	FROM	dashboard	WHERE	userid > 100);

delete FROM dashboard where userid>100;
delete FROM dashboarditem where lastupdatedby>100;

DELETE	from mapmapviews	WHERE	mapmapviews.mapid 
IN (SELECT	mapid	FROM	"map"	WHERE	userid > 100);

DELETE	from dashboarditem	WHERE	dashboarditem.mapid 
IN (SELECT	mapid	FROM	"map"	WHERE	userid > 100);

delete FROM "map" where userid>100;

DELETE	from orgunitgroupmembers	WHERE	orgunitgroupmembers.orgunitgroupid 
IN (SELECT	orgunitgroupid	FROM	orgunitgroup	WHERE	userid > 100);

DELETE	from reporttable_itemorgunitgroups	WHERE	reporttable_itemorgunitgroups.orgunitgroupid 
IN (SELECT	orgunitgroupid	FROM	orgunitgroup	WHERE	userid > 100);

delete FROM orgunitgroupmembers ;
delete FROM orgunitgroupsetmembers ;
delete FROM reporttable_itemorgunitgroups;
delete FROM orgunitgroup;

DELETE	from dashboarditem	WHERE	dashboarditem.reporttable 
IN (SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);

DELETE	from reporttable_filters	WHERE	reporttable_filters.reporttableid IN (
		SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);
		
DELETE	from reporttable_organisationunits	WHERE	reporttable_organisationunits.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);

DELETE	from reporttable_rows	WHERE	reporttable_rows.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);


DELETE	from reporttable_columns	WHERE	reporttable_columns.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable		WHERE	userid > 100);

DELETE	from reporttable_datadimensionitems	WHERE	reporttable_datadimensionitems.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);

DELETE	from reporttable_orgunitlevels	WHERE	reporttable_orgunitlevels.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable	WHERE	userid > 100);

DELETE	from reporttable_periods	WHERE	reporttable_periods.reporttableid 
IN (SELECT	reporttable.reporttableid	FROM	reporttable		WHERE	userid > 100);

delete FROM reporttable where userid>100;
delete FROM userkeyjsonvalue where userid>100;

DELETE	from messageconversation_usermessages	WHERE	messageconversation_usermessages.usermessageid 
IN (SELECT	usermessage.usermessageid	FROM	usermessage	WHERE	userid > 100);

delete FROM usermessage where userid>100;
delete FROM dashboarditem_users where userid>100;

update organisationunit set userid=50,lastupdatedby=50;
update trackedentityinstance set lastupdatedby=50;
update dataelement set userid=50,lastupdatedby=50;
update optionset set userid=50,lastupdatedby=50;
update programrule set lastupdatedby=50;
update programruleaction set lastupdatedby=50;
update programrulevariable set lastupdatedby=50;
update programstagedataelement set lastupdatedby=50;
update programstagesection set lastupdatedby=50;
update trackedentityattribute set lastupdatedby=50;
update programmessage set lastupdatedby=50;
update sqlview set userid=50,lastupdatedby=50;
update userrole set userid=50,lastupdatedby=50;
update categorycombo set userid=50,lastupdatedby=50;
update constant set userid=50,lastupdatedby=50;
update dataelementcategory set userid=50,lastupdatedby=50;
update dataelementcategoryoption set userid=50,lastupdatedby=50;
update dataelementgroup set userid=50,lastupdatedby=50;
update dataset set userid=50,lastupdatedby=50;
update "indicator" set userid=50,lastupdatedby=50;
update indicatorgroup set userid=50,lastupdatedby=50;
update categoryoptioncombo set lastupdatedby=50;
update dataentryform set lastupdatedby=50;
update keyjsonvalue set lastupdatedby=50;
update optiongroup set userid=50,lastupdatedby=50;
update orgunitlevel set lastupdatedby=50;
update program set userid=50,lastupdatedby=50;
update programindicator set userid=50,lastupdatedby=50;
update programindicatorgroup set userid=50,lastupdatedby=50;
update programnotificationtemplate set lastupdatedby=50;
update programstage set userid=50,lastupdatedby=50;
update "section" set lastupdatedby=50;
update usergroup set userid=50,lastupdatedby=50;
update validationrule set lastupdatedby=50;
update message set userid=50;
update messageconversation set userid=50,lastsenderid=50;
update trackedentityattribute set userid=50,lastupdatedby=50;
update validationrule set userid=50,lastupdatedby=50;

delete FROM userteisearchorgunits where userinfoid>100;
delete FROM userapps where userinfoid>100;
delete FROM userinfo where userinfoid>100;

