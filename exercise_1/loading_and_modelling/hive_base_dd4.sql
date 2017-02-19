DROP TABLE measures;

CREATE EXTERNAL TABLE measures
(
  measure_name string,
  measure_id string,
  measure_SQ string,
  measure_SD string,
  measure_EQ string,
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
LOCATION "/user/w205/hospital_compare/measures"
;

