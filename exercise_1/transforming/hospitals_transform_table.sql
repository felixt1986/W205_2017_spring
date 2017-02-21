create table hospitals_transform_table as
select
hospital_name,
state,
cast(hospital_overall_rating as decimal(1,0)) rating
from hospitals
where hospital_overall_rating Not like 'Not%'
order by rating DESC;
