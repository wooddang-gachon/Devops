# Docker Hello-World Basics

This directory contains a minimal example to introduce Docker container basics using a lightweight Alpine Linux image.

## 1. What this Dockerfile does

* **`FROM alpine:latest`**: Pulls the Alpine Linux image (approx. 5MB) from the Docker Hub to act as the base OS.
* **`CMD [...]`**: Defines the default command that runs when the container starts. Here, it simply prints a welcome message to the terminal.

## 2. How to Build and Run

### Step 1: Build the Image
Navigate to the `docker/basics/` directory and run the following command to package the Dockerfile into an image named `hello-docker`:

```bash
docker build -t hello-docker 
```
### Step 2: Run the Container
Once the build is complete, run an instance of the image:
```bash
docker run hello-docker
```
### Expected Output<br>
You should see the following message in your terminal:
```Plaintext
Hello, World! Welcome to your first Docker container.
```
### 3. Useful Commands
Here are some commands to help you manage what you just created.<br>
**List Images**<br>
Check which images currently exist on your machine. You should see hello-docker in this list.

```Bash
docker images
```
**Check Container Status**<br>
Since our container runs a simple echo command, it exits immediately after finishing. To see it, you must use the -a (all) flag to list stopped containers.
```Bash
# List only running containers (won't show our hello-world)
docker ps
# List ALL containers (including stopped ones)
docker ps -a
```
**Clean Up** <br>
To delete the specific container and image we created:
1. Remove the stopped container
```Bash
docker rm <container_id>
```
2. Remove the image
```
docker rmi hello-docker
```
