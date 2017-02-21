create table hospitals_score_table as
select
step1.hospital_name,
step2.state,
(step2.rating) + (step1.log_count) as agg_score,
(step2.rating/10) + (step1.log_count/16) as weighted_avg_score
from readmission_agg_table step1 right join hospitals_transform_table step2 ON (step1.hospital_name = step2.hospital_name)
where step1.hospital_name Not like 'Null'
order by weighted_avg_score DESC;
