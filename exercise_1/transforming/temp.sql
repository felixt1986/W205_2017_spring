create table temp as
select
hospital_ownership,
count(provider_id) as log_count
from hospitals
group by hospital_ownership
order by log_count DESC;
