# Docker-Flask 
  
A simple docker images contain Python+Flask for Web or Micro-Services Development. This image only used for development purpose only, because some comand only used in development stage. 

## Dockerfile

```FROM python:3

WORKDIR /usr/src/app

RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

```

## Requirements.txt

```Flask>=0.12```

#### Panjibaskoro - https//panjibaskoro.web.id

