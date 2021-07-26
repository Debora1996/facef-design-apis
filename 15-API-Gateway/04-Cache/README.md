# Exercício 04 - Cache

## Atividade 1 - Atualizar o Declarative Config

- A partir da pasta do declarative config, executar:

(Linux ou MacOS)
```
cp $FACEF_DESIGN_APIS/15-API-Gateway/04-Cache/kong.yml .
```

(Windows)
```
cp %FACEF_DESIGN_APIS\15-API-Gateway\04-Cache\kong.yml .
```

## Atividade 2 - Reiniciar o Kong

Executar no terminal:
```
docker container restart kong
```

## Atividade 3 - Chamada da API sem cache

Invocar a API de consulta de médico (1a chamada - sem cache):
```
curl -v http://localhost:8000/v1/doctors/1
```

Verifique os dois headers na resposta:

X-Kong-Upstream-Latency - por ser a primeira chamada, o gateway bate no backend - consequentemente a latência é maior que zero
X-Kong-Proxy-Latency - a latência de proxy deve ficar por volta de 15 - 40 milissegundos

## Atividade 4 - Chamada da API com cache

Invocar a API de consulta de médico (2a chamada - com cache):
```
curl -v http://localhost:8000/v1/doctors/1
```

Verifique os dois headers na resposta:

X-Kong-Upstream-Latency - por ser a segunda chamada, o gateway não bate no backend - consequentemente a latência é igual a zero
X-Kong-Proxy-Latency - a latência de proxy deve ficar abaixo de 20 milissegundos
