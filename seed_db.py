import sqlite3
import hashlib

conn = sqlite3.connect('quiz.db')
cursor = conn.cursor()

with open('quiz.sql', 'r') as sql_file:
    sql_script = sql_file.read()

cursor.executescript(sql_script)
conn.commit()
conn.close()
