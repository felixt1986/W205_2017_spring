create table Q1_step2 as
select
hospital_name,
cast(hospital_overall_rating as decimal(1,0)) rating
from hospitals
order by rating DESC;
