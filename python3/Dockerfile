FROM python:3.7

ENV FLASK_ENV development

WORKDIR /usr/src/app
 
RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
