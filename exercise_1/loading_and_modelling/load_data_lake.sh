#!/bin/bash

MY_DIR=$(pwd)
mkdir ~/staging
mkdir ~/staging/exercise_1

cd ~/staging/exercise_1

wget "https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip" -O medicare_data.zip

unzip medicare_data.zip

tail -n +2 "Hospital General Information.csv" > hospitals.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" > effective_care.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" > readmissions.csv
tail -n +2 "Measure Dates.csv" > measures.csv
tail -n +2 "hvbp_hcahps_05_28_2015.csv" > surveys_response.csv

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put measures.csv /user/w205/hospital_compare
hdfs dfs -put surveys_response.csv /user/w205/hospital_compare

cd $MY_DIR
exit
