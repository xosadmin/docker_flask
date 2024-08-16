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
- uWSGI Server: Coming Soon  
  
### uWSGI custom configuration  
If you plan to use uWSGI custom configuration, please place your ``uwsgi.ini`` in the root directory of application.  
If there is no ``uwsgi.ini`` in the root directory, default parameters (0.0.0.0:5000) will be adopted.  
