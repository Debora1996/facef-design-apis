@echo off

if [%1]==[] (
     @echo Usage: %0 ^<KongDeclarativeConfigPath^>
     exit /B 1
)

docker run -d --name kong --network=kong-net -v "%1:/home/kong" -e "KONG_DATABASE=off" -e "KONG_DECLARATIVE_CONFIG=/home/kong/kong.yml" -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" -e "KONG_PROXY_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" -p 8000:8000 -p 8443:8443 -p 127.0.0.1:8001:8001 -p 127.0.0.1:8444:8444 kong:latest