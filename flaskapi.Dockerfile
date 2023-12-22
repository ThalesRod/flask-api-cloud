FROM python:3.11-alpine

WORKDIR /cloud-api

COPY . .

RUN python -m venv env
RUN source env/bin/activate
RUN python -m pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT gunicorn -b 0.0.0.0:8000 -w 4 wsgi:app