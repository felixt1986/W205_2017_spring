create table temp2 as
select
h.provider_id,
h.hospital_ownership,
ec.measure_name,
ec.score 
from hospitals h join effective_care ec ON (h.provider_id = ec.provider_id)
where ec.score not like 'Not';
