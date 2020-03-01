delete FROM "public".userrolemembers where userid>100;
delete FROM "public".previouspasswords where userid>100;
delete FROM "public"."users" where userid>100;
delete FROM "public".usergroupmembers where userid>100;
delete FROM "public".usermembership where userinfoid>100;
delete FROM "public".userdatavieworgunits where userinfoid>100;
delete FROM "public".usersetting where userinfoid>100;
delete FROM "public"."programstageuseraccesses" where useraccessid>100;

DELETE
FROM
	"public".programstageuseraccesses
WHERE
	programstageuseraccesses.useraccessid IN (
		SELECT
			useraccessid
		FROM
			"public".useraccess
		WHERE
			userid > 100
	);


DELETE
FROM
	"public".dashboarduseraccesses
WHERE
	dashboarduseraccesses.useraccessid IN (
		SELECT
			useraccessid
		FROM
			"public".useraccess
		WHERE
			userid > 100
	);
delete FROM "public".useraccess where userid>100;

DELETE
FROM
	"public".chart_datadimensionitems
WHERE
	chart_datadimensionitems.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
	);
DELETE
FROM
	"public".chart_organisationunits
WHERE
	chart_organisationunits.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
	);
DELETE
FROM
	"public".chart_filters
WHERE
	chart_filters.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
	);
DELETE
FROM
	"public".chart_periods
WHERE
	chart_periods.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
	);
DELETE
FROM
dashboard_items
where 
dashboarditemid in
(
select dashboarditemid
	from "public".dashboarditem
WHERE
	dashboarditem.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
	)
);
DELETE
	from "public".dashboarditem
WHERE
	dashboarditem.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
);
DELETE
	from "public".chart_orgunitlevels
WHERE
	chart_orgunitlevels.chartid IN (
		SELECT
			chartid
		FROM
			"public".chart
		WHERE
			userid > 100
);

delete FROM "public".chart where userid>100;
DELETE
	from "public".dashboard_items
WHERE
	dashboard_items.dashboardid IN (
		SELECT
			dashboardid
		FROM
			"public".dashboard
		WHERE
			userid > 100
);

delete FROM "public".dashboard where userid>100;
delete FROM "public".dashboarditem where lastupdatedby>100;
DELETE
	from "public".mapmapviews
WHERE
	mapmapviews.mapid IN (
		SELECT
			mapid
		FROM
			"public"."map"
		WHERE
			userid > 100
);
DELETE
	from "public".dashboarditem
WHERE
	dashboarditem.mapid IN (
		SELECT
			mapid
		FROM
			"public"."map"
		WHERE
			userid > 100
);
delete FROM "public"."map" where userid>100;

DELETE
	from "public".orgunitgroupmembers
WHERE
	orgunitgroupmembers.orgunitgroupid IN (
		SELECT
			orgunitgroupid
		FROM
			"public".orgunitgroup
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_itemorgunitgroups
WHERE
	reporttable_itemorgunitgroups.orgunitgroupid IN (
		SELECT
			orgunitgroupid
		FROM
			"public".orgunitgroup
		WHERE
			userid > 100
);
delete FROM "public".orgunitgroupmembers ;
delete FROM "public".orgunitgroupsetmembers ;
delete FROM "public".reporttable_itemorgunitgroups;
delete FROM "public".orgunitgroup;
DELETE
	from "public".dashboarditem
WHERE
	dashboarditem.reporttable IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_filters
WHERE
	reporttable_filters.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_organisationunits
WHERE
	reporttable_organisationunits.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_rows
WHERE
	reporttable_rows.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_columns
WHERE
	reporttable_columns.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_datadimensionitems
WHERE
	reporttable_datadimensionitems.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_orgunitlevels
WHERE
	reporttable_orgunitlevels.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
DELETE
	from "public".reporttable_periods
WHERE
	reporttable_periods.reporttableid IN (
		SELECT
			reporttable.reporttableid
		FROM
			"public".reporttable
		WHERE
			userid > 100
);
delete FROM "public".reporttable where userid>100;
delete FROM "public".userkeyjsonvalue where userid>100;
DELETE
	from "public".messageconversation_usermessages
WHERE
	messageconversation_usermessages.usermessageid IN (
		SELECT
			usermessage.usermessageid
		FROM
			"public".usermessage
		WHERE
			userid > 100
);
delete FROM "public".usermessage where userid>100;
delete FROM "public".dashboarditem_users where userid>100;

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
update message set userid=50
update messageconversation set userid=50,lastsenderid=50;
update trackedentityattribute set userid=50,lastupdatedby=50;
update validationrule set userid=50,lastupdatedby=50;

delete FROM userteisearchorgunits where userinfoid>100;

delete FROM "public".userinfo where userinfoid>100;

