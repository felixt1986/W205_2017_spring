create table hospital_variability as
select
measure_id,
measure_name,
range,
sd
from readmissions_var_table
order by sd DESC
limit 10;
