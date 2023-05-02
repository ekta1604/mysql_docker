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

# Dockerize a Python script

1. Create a Dockerfile: The Dockerfile is a script that contains instructions to build a Docker image. Create a new file called "Dockerfile" in the same directory as your Python script.
2. Choose a base image: In the Dockerfile, specify the base image to use. You can use a pre-existing image from Docker Hub that has Python installed or use the official Python image. For example, you can use the official Python 3.9 image by adding the following line to your Dockerfile:```FROM python:3.9```
3. Copy the Python script into the container: Use the COPY command in the Dockerfile to copy the Python script from your local machine to the container. For example, if your Python script is called "script.py" and is in the same directory as the Dockerfile, add the following line to your Dockerfile:```COPY script.py /app/```. This will copy the "script.py" file to a directory called "/app/" in the container.
4. Install dependencies: If your Python script requires any dependencies, you will need to install them in the Docker image. You can use the RUN command in the Dockerfile to install any required packages. For example, if your script requires the numpy package, add the following line to your Dockerfile:``` RUN pip install numpy```
5. Set the working directory: Use the WORKDIR command in the Dockerfile to set the working directory for the container. For example, if you want to set the working directory to "/app/", add the following line to your Dockerfile:``` WORKDIR /app/  ```
6. Specify the command to run: Use the CMD command in the Dockerfile to specify the command to run when the container starts. For example, if you want to run the "script.py" file, add the following line to your Dockerfile:```CMD ["python", "script.py"]```
7. Build the Docker image: Use the docker build command to build the Docker image. Run the command from the directory containing the Dockerfile and the Python script. For example, to build the image and tag it as "my-python-script", run the following command:```docker build -t my-python-script .```
8. Run the Docker container: Use the docker run command to run the Docker container. For example, to run the "my-python-script" container, run the following command:```docker run my-python-script```This will start the container and run the "script.py" file.

# Make docker compose file
1. Create a new file named docker-compose.yml in your project directory.
2. Define the services you want to use in your application.
3. Specify the images or Dockerfiles for each service.
4. Define the ports, volumes, and other configurations for each service.
5. Optionally, define environment variables or other parameters for each service.
6. Save the docker-compose.yml file.

### docker-compose up -d 
### docker-compose down




