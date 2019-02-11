FROM python:3

RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000/tcp

CMD [ "python", "./*.py" ]
