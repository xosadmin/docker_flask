# docker_flask
A debian-based docker container for running Flask program.
  
### How to build own image based on this repo
1. Clone this project
2. use ``docker build -t foo .``, where ``foo`` is your image name
3. Create a new container by the following command:  
   ``docker run -d -p 5000:5000 -v /path/to/your/app:/app foo``
4. Enjoy
  
