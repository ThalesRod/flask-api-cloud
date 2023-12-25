## Network for communication
```bash
docker network create infra_network
```

## Docker for API
```bash
docker build -t tek/cloud-api:1.0 -f flaskapi.Dockerfile .
docker run -d --name cloud-api --network infra_network -d tek/cloud-api:1.0
```

## Docker for reverse proxy
```bash
docker build -t tek/nginx-infra:1.0 -f nginx.Dockerfile .
docker run -d --name nginx-infra -p 80:80 --network infra_network -d tek/nginx-infra:1.0
```

## Run with docker compose
```bash
docker-compose up -d
```

## Create and edit the .env file 