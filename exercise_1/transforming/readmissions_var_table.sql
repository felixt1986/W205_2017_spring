create table readmissions_var_table as
select
measure_id,
measure_name,
avg(higher_est - lower_est) as range,
stddev (score) as SD
from readmissions
where score Not like 'Not%'
group by measure_id, measure_name
order by SD DESC;

