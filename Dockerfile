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

# Docker cache packages so that this line is only re-run
# when contents of ./requirements change
ADD ./requirements /code/requirements
RUN pip install -r requirements/dev.txt

ADD . /code/
CMD python manage.py runserver 0.0.0.0:8000
