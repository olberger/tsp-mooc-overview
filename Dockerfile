# Use same base as postgres to minimize total size
FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y python curl \
	&& apt-get install -y python-pip

# Force stdin, stdout and stderr to be totally unbuffered
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

ADD requirements.txt /app/

RUN apt-get install -y python-flask python-yaml python-mock python-nose python-coverage python-docker python-blinker
RUN pip install -r requirements.txt

ADD . /app/

EXPOSE 5000

CMD ["python", "app.py"]
