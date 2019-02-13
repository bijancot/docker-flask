# Docker-Flask 
  
A simple docker images contain Python+Flask for Web or Micro-Services Development. This image only used for development purpose only, because some comand only used in development stage. 

## Dockerfile

take a look at latest Dockerfile :

[wongko/docker-flask:latest](master/Dockerfile)

## Library inside this image

```
Flask>=0.12
Flask-WTF>=0.13.1
WTForms>=2.0.1
```

soon more library will be added in requirements.txt 

## How to run this images 

to run this images you just need to set ```FLASK_APP``` environtment with ```-e``` option when you starting the container. And also you need to make sure the container run on ```0.0.0.0``` host, you can do it with simply add ```--host='0.0.0.0'``` parameter when you about to run a container. Also make sure you forwarded the port of container to the right port with ```-p``` option folowed by ```<dst_port>:5000``` i think it's unnecessary but it's good info for you if you want to forward it to specific port.

example for running a simple ```docker-flask``` container :

```
# docker run -it -p 2009:5000 -v $PWD:/usr/src/app -e FLASK_APP=test/test.py wongko/docker-flask flask run --host='0.0.0.0
```

make sure when you set volume after option ```-v``` you using the specific directory for example : ```/mnt/b2c7efbf-ef52-437d-8ca7-e46ea581cbba/Kuliah/docker-flask``` because some how i always found error if not give it the "long directory folder". That's all. thx
#### Panjibaskoro - https//panjibaskoro.web.id

