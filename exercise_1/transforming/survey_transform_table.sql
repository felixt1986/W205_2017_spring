create table survey_transform_table as
select
hospital_name,
cast(overall_rating_of_hospital_perf as float) overall_rating
from surveys_responses
where overall_rating_of_hospital_perf Not like 'Not%';
