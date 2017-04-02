import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import sys


conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()


min = sys.argv[1]
max = sys.argv[2]

cur.execute("SELECT word,count FROM tweetwordcount WHERE count BETWEEN %s AND %s ORDER BY count DESC",(min, max))
records = cur.fetchall()
for rec in records:
    print (rec)
conn.commit()
conn.close()
