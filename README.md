# Install my-sql container in docker 

1. Install Docker on your system if it is not already installed.
2. Open a terminal or command prompt.
3. Pull the MySQL Docker image using the following command:
    ```docker pull mysql```
4. Once the image is downloaded, run the following command to create a new container:
        ```docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql```
        Here, my-mysql is the name you want to give your container, and root is the password you want to set for the root user.

5. Once the container is created, you can connect to it using a MySQL client or another container. You can also manage the container using Docker commands, such as ```docker start```, ```docker stop```, or ```docker rm```.
That's it! You now have a MySQL container up and running in Docker.

# Connect python script to docker container

1. Install docker desktop and start my-mysql container 
2. Install docker with this command  ```pip install docker```
3. ```import docker``` into your python script 
4. Write this code to connect 
    ```client = docker.from_env()```
    ```container = client.containers.get('my-mysql')```
    ```container.start()```

# connect python script to the my-sql server 

1. Install pymysql with ```pip install pymysql``` command, you can use different libraries like mysql.connector and sqllit3 etc. 
2. In your Python script, import the pymysql module and create a connection to your MySQL server using the connect() method. You will need to provide the host, user, password, and database name as parameters to this method. For example:
 ```import pymysql``
 ````conn = pymysql.connect(host="localhost",port=3307,user="root",password="root")```
3. Once you have a connection, you can create a cursor object to execute SQL statements using the cursor() method. For example: ```cursor = conn.cursor()```
4. You can then execute SQL statements using the cursor's execute() method. For example, to select data from a table, you can use the following code:
```cursor.execute("SELECT * FROM mytable")```
```result = cursor.fetchall()``` 
This will fetch all the rows from the mytable table and store them in the result variable.
5. You can then use the data returned by the SQL statement in your Python script as needed.
6. When you're finished with the connection, close it using the close() method. For example:
```conn.close()``` 
7. You can commit changes with ```conn.commit()```




