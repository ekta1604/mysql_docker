# Base image
FROM python:3.9

# Install required packages
RUN pip install pandas pymysql docker

# Set the working directory
WORKDIR /app

# Copy the script to the working directory
COPY pdb.py /app/

# Set the command to run when the container starts
CMD ["python", "pdb.py"]
