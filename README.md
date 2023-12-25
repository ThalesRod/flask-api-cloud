## Flask API and NGINX proxy reverse infrastructure

An easy to setup and run infrastructure using Docker and NGINX to create a web API

#### Install and setup
```bash
echo "API_PORT=80" >> .env
docker build -t tek/cloud-api:1.0 -f flaskapi.Dockerfile .
docker build -t tek/nginx-infra:1.0 -f nginx.Dockerfile .
```
#### Run
```bash
docker-compose up -d
```

#### Test
```bash
curl http://localhost/
```
