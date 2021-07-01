# Exercício 01 - Setup do Kong

## Atividade 1 - Setup do backend de doctors

Abrir o terminal e executar os comandos:
```
docker network create kong-net
docker container run -p 8080:8080 --network=kong-net -d --name facef-design-apis-doctors marcelofelixsalgado/facef-design-apis-doctors:latest
```

Testar o funcionamento do backend:
```
curl http://localhost:8080/v1/doctors/1
```

## Atividade 2 - Setup do kong Gateway

Executar os comandos no terminal:
```
docker volume create kong-vol
docker volume inspect kong-vol
```

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar os comandos no terminal:
```
docker run -d --name kong \
     --network=kong-net \
     -v "PASTA_KONG_YML:/home/kong" \
     -e "KONG_DATABASE=off" \
     -e "KONG_DECLARATIVE_CONFIG=/home/kong/kong.yml" \
     -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
     -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
     -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
     -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" \
     -p 8000:8000 \
     -p 8443:8443 \
     -p 127.0.0.1:8001:8001 \
     -p 127.0.0.1:8444:8444 \
     kong:latest
```
Obs: substituir PASTA_KONG_YML pelo endereço pasta onde você baixou o kong.yml

Testar o funcionamento do backend:
```
curl http://localhost:8000/v1/doctors/1
```
