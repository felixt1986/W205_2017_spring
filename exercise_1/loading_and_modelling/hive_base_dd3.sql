DROP TABLE readmissions;

CREATE EXTERNAL TABLE readmissions
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_number string,
  measure_name string,
  measure_id string,
  compared_to_national string,
  denominator string,
  score string,
  lower_est string,
  higher_est string,
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
LOCATION "/user/w205/hospital_compare/readmissions"
;

