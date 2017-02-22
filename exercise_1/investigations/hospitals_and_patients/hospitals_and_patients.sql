create table hospitals_and_patients as
select
CORR(s.weighted_avg_score, t.overall_rating) as correlation
from hospitals_score_table s join survey_transform_table t ON (s.hospital_name= t.hospital_name);
