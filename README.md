## Docker for API
docker build -t cloud-api -f flaskapi.Dockerfile .
docker run -d --name cloud-api -p 8000:8000 -d cloud-api:latest

## Docker for reverse proxy
docker build -t nginx-infra -f nginx.Dockerfile .
docker run -d --name nginx-infra -p 80:80 -d nginx-infra:latest
