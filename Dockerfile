FROM python:3

WORKDIR /usr/src/app

ENV FLASK_APP app.py
 
RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY $FLASK_APP ./
RUN flask run --host=0.0.0.0
COPY . .

EXPOSE 5000

CMD [ "python", "./*.py" ]
