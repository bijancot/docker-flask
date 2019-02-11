FROM python:3

WORKDIR /usr/src/app
 
RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN flask run --host=0.0.0.0
COPY . .

EXPOSE 5000

CMD [ "python", "./*.py" ]
