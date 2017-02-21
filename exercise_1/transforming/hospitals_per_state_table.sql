create table hospitals_per_state_table as
select
state,
count(hospital_name) as hospitals_count
from hospitals
group by state
order by hospitals_count DESC;
