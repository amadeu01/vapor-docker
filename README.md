# Vapor for Docker

## Simple setup
You can use the base image to get a simple setup with Vapor & Docker up and running.
Go to your projects root directory and run this command

`docker run --rm -ti -v $(pwd):/vapor -p 8080:8080 vapor/vapor:latest`

This command will start a container with a mounted directory and build and run the source inside the container. You can access to your app using [localhost](https://localhost:8080)

**This image doesn't have DB, such as Postgres **

##### Nginx
You need to name your vapor container for `vapor` that is done by adding `--name vapor` in the run command for your `vapor` image.
Then you go to the folder nginx and build the image `docker build -t nginxvapor .`

After the image has been build run it with `docker run -d --link vapor:vapor -p 80:80 nginxvapor`
This command will start nginx and run it detached.`
