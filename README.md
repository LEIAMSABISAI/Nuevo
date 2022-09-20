# linear-regressor
A basic linear regressor implemented in Jupyter and the procedure to make work Jupyter on Docker.

# Notes
This procedure has been tested on Ubunto 18.04 and the recent 22.04 on a virtual machine, however, no problems should be found.

# Docker installation
The newest version of Docker only requires the next commands to install properly docker and docker-compose on ubuntu:
```
sudo apt-get update
sudo apt-get install docker.io docker-compose
```

after that the Docker system can be tested:
```
sudo docker run hello-world
```

Next, let us add ourself to the Docker groups by:
```
sudo groupadd docker
sudo usermod -aG docker $USER
```
at this point you need to restart your computer or just logout to make the changes works

Now, try to run docker without sudo.

# Create the jupyter-ai container
You can clone this repository to follow the same instructions and get same results:
```
git clone 
```
then, go inside the repository's folder
```
cd linear-regressor
```

Next, build the image from the Dockerfie:

```
docker build -t gmarxcc/jupyter-ai:0.1  .
```

now, run the container using:
```
docker run -it -v `pwd`:/home -p 8888:8888 gmarxcc/jupyter-ai:0.1 bash
root@8130c6df985a:/# 
```

finally to run your jupyter notebook instance run:
```
jupyter-notebook --allow-root --no-browser --ip 0.0.0.0
```

