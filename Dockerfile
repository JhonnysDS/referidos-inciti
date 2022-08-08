# Set base image (host OS)
FROM python:3

# By default, listen on port 5000
EXPOSE 5000/tcp

# Set the working directory in the container
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Specify the command to run on container start
CMD ["flask", "run", "--host=0.0.0.0"]