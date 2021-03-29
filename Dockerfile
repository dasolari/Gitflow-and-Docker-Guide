# A dockerfile will build an image given every that you write. In
# order to keep thing efficient, it will cache each instruction as
# a layer in case nothing changed, so the order in which you give
# these isntructions is important.

# This example shows the dockerization of a node app

# This installs the enviroment where you will be running your app.
# It's recommended that you use a fixed version to avoid breaking
# functionality in case an update comes along. e.g. node:12
FROM node:latest

# Sets the working directory for any subsequent instruction.
WORKDIR /usr/src/app

# Execute a command in your enviroment as an additional layer.
RUN apt-get update

# These would be the dependencies of your app, so you want to add
# them as a more external layer to avoid re-writing then every time
# you make a small change in your app. 
# The first argument is what you want to copy, the second argument
# is where you want to copy it (in this case is the cwd).
COPY package*.json ./

# Execute this command to install your dependencies.
RUN npm install

# At this point, you want to copy all your source code. Now that
# you are in the final layers of your image, any changes you make
# while debugging your code will not install the dependencies again.
# The first argument corresponds to all the local files and the 
# second argument corresponds to the cwd in your image.
# Be sure to ignore any modules created by the dependencies in a
# .dockerignore file.
COPY . .

# Add any enviroment variables with this command (optional).
# If you have a docker-compose file, this is not necessary in this file.
ENV PORT=3000 POSTGRES_DB=db_name

# Expose a port in your container that can be accessed from the
# outside. If you have a docker-compose file, this is not necessary
# in this file.
EXPOSE 3000

# There can only be one of these per dockerfile and it tells the
# container how to run the application. It's an exec form.
CMD [ "npm", "run", "start" ]


# To run a container, write:

# docker build -t image_name .
# This defines a tag (-t) with a custom name (image_name) and the location of the dockerfile (this cwd).

# docker run -p local_port:exposed_container_port image_name_or_id
# This runs the container, specifying the local port and the port exposed in the container.

# docker volume create files-volume
# docker run --mount source=files-volume,target=/file_to_persist
# This creates and mounts a volume to persist any files you want.

# docker container_name_or_id exec
# This runs a terminal session inside the container.