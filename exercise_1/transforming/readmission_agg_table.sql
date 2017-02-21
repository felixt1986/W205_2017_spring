create table readmission_agg_table as
select
hospital_name,
compared_to_national,
count(compared_to_national) as log_count
from readmissions
where compared_to_national like"Better%"
group by hospital_name, compared_to_national
order by log_count DESC;
