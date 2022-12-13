FROM python:3.9

ENV APP_HOME=/home/aws
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/static
# set work directory
WORKDIR $APP_HOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /home/aws/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . $APP_HOME

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

# CMD gunicorn aws.wsgi:application --bind 0.0.0.0:8000 --timeout 120
