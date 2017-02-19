DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  condition string,
  measure_id string,
  measure_name string,
  score string,
  sample string,
  footnote string,
  measure_SD string,
  measure_ED string 
)

ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
  "separatorChar"=",",
  "quoteChar"='"',
  "escapeChar"="\\"
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/effective_care"
;

