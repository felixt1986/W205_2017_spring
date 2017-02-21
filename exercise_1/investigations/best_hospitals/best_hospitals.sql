create table best_hospitals as
select
hospital_name,
state,
agg_score,
weighted_avg_score
from hospitals_score_table
order by weighted_avg_score DESC
limit 10;
