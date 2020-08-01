FROM python:3.6.7-alpine3.6

ENV APP_HOME /app

COPY requirements.txt /app/

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
