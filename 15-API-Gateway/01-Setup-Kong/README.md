# Exercício 01 - Setup do Kong

## Atividade 1 - Setup da rede

- Abrir o terminal

- Executar os comandos para criar a rede:
```
docker network create kong-net
```

## Atividade 2 - Inclusão do backend na rede

- Adicionar o backend de patients nessa rede:
```
docker network connect kong-net facef-design-apis-patients
```

## Atividade 3 - Setando variável de ambiente para pasta do projeto

- Pela linha de comando, acessar a raiz da pasta do projeto

- Executar (Linux ou MacOS):
```
export FACEF_DESIGN_APIS=$PWD
```

- Executar (Windows):
```
set FACEF_DESIGN_APIS=%cd%
```

## Atividade 4 - Criando a pasta do Declarative Config

- Criar uma pasta qualquer no disco

- Pela linha de comando, acessar essa pasta recém-criada

- Executar (Linux ou MacOS):
```
export FACEF_KONG_DD=$PWD
```

- Executar (Windows):
```
set FACEF_KONG_DD=%cd%
```

## Atividade 5 - Copiar o Declarative Config para a pasta

- A partir dessa pasta, executar:

(Linux ou MacOS)
```
cp $FACEF_DESIGN_APIS/15-API-Gateway/01-Setup-Kong/kong.yml .
```

(Windows)
```
cp %FACEF_DESIGN_APIS\15-API-Gateway\01-Setup-Kong\kong.yml .
```

## Atividade 6 - Setup do kong Gateway

- Executar (Linux ou MacOS):
```
docker run -d --name kong \
     --network=kong-net \
     -v "$FACEF_KONG_DD:/home/kong" \
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

- Executar (Windows):
```
docker run -d --name kong \
     --network=kong-net \
     -v "%FACEF_KONG_DD%:/home/kong" \
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

## Atividade 7 - Testar o funcionamento da API exposta pelo Kong:

### Opção 1 - A partir do Postman

- Abra o Postman 

- Execute o request a partir de `Facef-Design-APIs / Gateway / 01-Setup-Kong / Get Patient by ID`

- O resultado deve ser:

![print_postman.png](print_postman.png)

### Opção 2 - A partir do curl

- A partir do terminal, execute o comando:
```
curl -v GET 'http://localhost:8000/v1/patients/3dc97efc-1b5b-492c-905c-449677b390e1'
```

- O resultado deve ser:

![print_curl.png](print_curl.png)