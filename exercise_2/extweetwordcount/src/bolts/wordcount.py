from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT

class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()

    def process(self, tup):
        word = tup.values[0]

        # Increment the local count
        self.counts[word] += 1
        uCount=self.counts[word]
        uWord=word
        self.emit([word, self.counts[word]])

        # Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount 
        # Table name: Tweetwordcount 
        # you need to create both the database and the table in advance.
        #conn = psycopg2.connect(database="postgres", user="postgres", password="pass", host="localhost", port="5432")       
        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
        cur = conn.cursor()

	if self.counts[word] ==1:
            #Insert
            cur.execute(("INSERT INTO tweetwordcount (word,count)" "VALUES (%s,%s)"),(uWord,uCount))
	else:
	    #Using variables to update
	    cur.execute("UPDATE tweetwordcount SET count=%s WHERE word=%s" , (uCount,uWord))
	conn.commit()


