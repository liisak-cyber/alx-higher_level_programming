#!/usr/bin/python3
import MySQLdb
import sys

if __name__ == "__main__":
    # Get MySQL credentials and database name from command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # Connect to the MySQL database
    db = MySQLdb.connect(host="localhost", port=3306, user=username, passwd=password, db=database)
    
    # Create a cursor object to interact with the database
    cur = db.cursor()
    
    # Execute the query to select all states, sorted by id
    cur.execute("SELECT id, name FROM states ORDER BY id ASC")
    
    # Fetch all the results
    rows = cur.fetchall()
    
    # Print each row
    for row in rows:
        print(row)
    
    # Close the cursor and the database connection
    cur.close()
    db.close()
