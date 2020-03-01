
delete 
from datavalueaudit
where dataelementid in
(
select dataelementid
from datasetelement
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)
)

delete 
from datavalue
where dataelementid in
(
select dataelementid
from datasetelement
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)
)


delete 
from sectiondataelements
where sectionid in
(
select sectionid
from section
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)
)

delete 
from section
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)


delete 
from datasetsource
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)


delete 
from datasetelement
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from datasetuseraccesses
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete from reporttable_datadimensionitems
where datadimensionitemid in 
(
select datadimensionitemid 
from datadimensionitem
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)
)

delete from chart_datadimensionitems
where datadimensionitemid in 
(
select datadimensionitemid 
from datadimensionitem
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)
)


delete 
from datadimensionitem
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from completedatasetregistration
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from datasetindicators
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from datasetelement
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from datasetsource
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)

delete 
from datasetusergroupaccesses
where datasetid in
(
SELECT datasetid FROM "public"."dataset" 
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')
)


delete FROM "public"."dataset"
where uid in ('eDJ0AcNmsgy','cLaf3ZJh0kn')

