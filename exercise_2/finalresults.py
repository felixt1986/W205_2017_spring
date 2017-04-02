import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT
import sys

conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()

try:
    keyword = sys.argv[1]
    cur.execute("SELECT word,count FROM tweetwordcount WHERE word = %(word)s",{'word':keyword})
    records = cur.fetchall()
    for rec in records:
        print ("Total number of occurences of {}: {}".format(rec[0],rec[1]))
    conn.commit()
except:
    cur.execute("SELECT word,count FROM tweetwordcount ORDER BY word")
    records = cur.fetchall()
    for rec in records:
        print (rec)
    conn.commit()
conn.close()

