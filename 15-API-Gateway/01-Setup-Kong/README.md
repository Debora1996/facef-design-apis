# Exercício 01 - Setup do Kong

## Atividade 1 - Setup da rede

- Abrir o terminal

- Executar os comandos para criar a rede:
```
docker network create kong-net
```

## Atividade 2 - Setup do kong Gateway

- Adicionar o backend de doctors nessa rede:
```
docker network connect kong-net facef-design-apis-doctors
```

## Atividade 3 - Setup do kong Gateway

Fazer o download do arquivo kong.yml para uma pasta na sua máquina

Executar os comandos no terminal, substituindo PASTA_KONG_YML pelo endereço pasta onde você baixou o kong.yml:
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

Testar o funcionamento do backend:
```
curl -v http://localhost:8000/v1/doctors/1
```