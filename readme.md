# Docker-Flask 
  
A simple docker images contain Python+Flask for Web or Micro-Services Development.

## Dockerfile

```FROM python:3                                                                                                                                                                                   
                                                                                                                                                                                                
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .```

#### Panjibaskoro - panjibaskoro.web.id

