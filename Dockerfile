FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /app

COPY . /app


RUN apt-get update && apt-get install -y nginx

EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
