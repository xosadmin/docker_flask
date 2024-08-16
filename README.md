# docker_flask
A debian-based docker container for running Flask program.
  
### How to build own image based on this repo
1. Clone this project
2. use ``docker build -t foo .``, where ``foo`` is your image name
3. Create a new container by the following command:  
   ``docker run -d -p 5000:5000 -v /path/to/your/app:/app foo``
4. Enjoy
  
### Launch new container from Docker Hub  

Use the following command:  
- Python Dev Server  
``docker run -d -p 5000:5000 -v /path/to/your/app:/app xosadmin/docker-flask:dev``  
- uWSGI Server (Experimental, default parameters):  
``docker run -d -p 5000:5000 -v /path/to/your/app:/app xosadmin/docker-flask:uwsgi-test``  
- uWSGI Server (Experimental, custom config ``uwsgi.ini``):  
``docker run -d -p <Your port> -v /path/to/your/app:/app xosadmin/docker-flask:uwsgi-test``  
