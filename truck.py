# connecting to database for assignment in week 7
#:  Name:   Benjamin A
#:  School: Lewis University
#:  Course: Database Programming/ CSPC50900
#:  Date:   August 19, 2022

# import mysql connector
import mysql.connector

# list of queries

# CASE 1
# Assuming you want to find a detail of customer but do not have his fullname and details or customerID
# we can use % to pull names beginning with the first 2 letters, for instances

# show tables
sh_tables = "SHOW TABLES"

# define string parameters
# string to print customer information;
customerInfo = "SELECT * FROM customerInfo LIMIT 4"
#  string to print product information;
productInfo = "SELECT * FROM ProductInfo LIMIT 4"
# string to print Employee information;
employeeInfo = "SELECT * FROM employeeInfo LIMIT 4"
# string to print TruckInfo information;
truckInfo = "SELECT * FROM truckInfo LIMIT 4"
# string to print customer Address information;
AddressInfo = "SELECT * FROM addressInfo LIMIT 3"
# string to print Haul information;
haulInfo = "SELECT * FROM haulInfo LIMIT 3"
# string to print order information;
orderInfo = "SELECT * FROM orderInfo LIMIT 3"

# connecting to database using user login "summer2022b" using try-catch
try:
    print("Connecting to Database.........")
    myBenData = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        passwd="Benjamin616224",
        database="benjamin_finalproject")
except mysql.connector.Error as OOPS:
    if OOPS.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("There is problem with the credentials provided!")
    elif OOPS.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database selected cannot be found")
    else:
        print("Cannot connect to database:", OOPS)
else:  # execute queries;
    print("Connected to database successfully\n")
    #   connection established, just select
    my_cursor = myBenData.cursor()
    my_cursor.execute(truckInfo)
    for i in my_cursor:
        print(i)


# close connection to database
myBenData.close()
