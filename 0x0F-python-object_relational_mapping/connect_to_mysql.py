import MySQLdb
/
# Replace these variables with your actual credentials
host = "localhost"
username = "root@localhost"
password = "Mom701010"
database = "hbtn_0e_0_usa"

# Connect to MySQL
try:
    db = MySQLdb.connect(host=host, user=username, passwd=password, db=database)
    print("Connected successfully!")
    # Do your database operations here
except MySQLdb.Error as e:
    print(f"Error connecting to MySQL: {e}")
finally:
    # Close the connection
    db.close()
