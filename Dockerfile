FROM amazonlinux:latest

RUN yum install -y which unzip aws-cli python3.11 python3.11-pip nginx

WORKDIR /cloud-api

COPY . .

RUN python3.11 -m venv env
RUN source env/bin/activate
RUN python3.11 -m pip install -r requirements.txt

COPY nginx_config.conf /etc/nginx/conf.d/virtual.conf

EXPOSE 8000

ENTRYPOINT gunicorn -b 0.0.0.0:8000 -w 4 wsgi:app
