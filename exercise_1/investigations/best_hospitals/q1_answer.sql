create table Q1_answer as
select
step1.hospital_name,
(step2.rating) + (step1.log_count) as agg_score,
(step2.rating/10) + (step1.log_count/16) as weighted_avg_score
from q1_step1 step1 join q1_step2 step2 ON (step1.hospital_name = step2.hospital_name)
order by weighted_avg_score DESC
limit 10;
