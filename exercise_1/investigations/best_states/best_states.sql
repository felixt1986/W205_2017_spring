create table best_states as
select
score_t.state,
state_t.hospitals_count,
avg(score_t.weighted_avg_score) as weighted_avg_score
from hospitals_score_table score_t join hospitals_per_state_table state_t  ON (score_t.state = state_t.state)
where state_t.hospitals_count >10
group by score_t.state, state_t.hospitals_count
order by weighted_avg_score DESC
limit 10;
