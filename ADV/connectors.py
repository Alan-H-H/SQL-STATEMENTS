import mysql.connector


def print_user(user):

    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "hello_myql",
        "user": "root",
        "password": "alan1989"
    }

    # config = {
    #     "host": "bpw0hq9h09e7mqicjhtl-mysql.services.clever-cloud.com",
    #     "port": "3306",
    #     "database": "bpw0hq9h09e7mqicjhtl",
    #     "user": "uqzby88erlhvkrty",
    #     "password": "oePXiCOHdU1WRV80NPyv"
    # }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name=%s;"
    print(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()


print_user("Brais")