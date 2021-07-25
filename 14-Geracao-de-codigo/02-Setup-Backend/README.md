# Exercício - Setup do backend

Abrir o terminal e executar os comandos:
```
docker container run -p 8080:8080 -d --name facef-design-apis-doctors marcelofelixsalgado/facef-design-apis-doctors:latest
```

Testar o funcionamento do backend:
```
curl http://localhost:8080/v1/doctors/1
```
