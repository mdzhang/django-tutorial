FROM python:3.5

# Ensure that Python outputs everything that's printed inside
# the application rather than buffering it.
ENV PYTHONUNBUFFERED 1

# Add dockerize, which will add a command we can use to wait for
# dependent containers to finish setup (instead of just startup)
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.1.0/dockerize-linux-amd64-v0.1.0.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.1.0.tar.gz

RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install -r requirements/dev.txt

CMD python manage.py runserver 0.0.0.0:8000
