@echo off

set DECLARATIVE_CONFIG_SETUP="..\01-Setup-Kong"
set DECLARATIVE_CONFIG_AUTH="..\02-Key-Authentication"
set DECLARATIVE_CONFIG_CORRELATION_ID="..\03-Correlation-ID"
set DECLARATIVE_CONFIG_CACHE="..\04-Cache"
set DECLARATIVE_CONFIG_RESPONSE_TRANSFORMER="..\05-Response-Transformer"
set DECLARATIVE_CONFIG_RATE_LIMITING="..\06-Rate-Limiting"

if %~1 == "" ( call :die "1 argument required, $# provided" )
if %~1 == "setup-network" ( call :kong_setup_network )
if %~1 == "setup-kong" ( call :kong_setup $DECLARATIVE_CONFIG_SETUP )
if %~1 == "key-auth" ( call :kong_update $DECLARATIVE_CONFIG_AUTH )
if %~1 == "correlation-id" ( call :kong_update $DECLARATIVE_CONFIG_CORRELATION_ID )
if %~1 == "cache" ( call :kong_update $DECLARATIVE_CONFIG_CACHE )
if %~1 == "response-transformer" ( call :kong_update $DECLARATIVE_CONFIG_RESPONSE_TRANSFORMER )
if %~1 == "rate-limiting" ( call :kong_update $DECLARATIVE_CONFIG_RATE_LIMITING )
if %~1 == "stop" ( call :kong_stop )
if %~1 == "remove" ( call :kong_remove )

exit /b 0

:die
@echo %~1
exit /b 1

:kong_setup_network
docker network create kong-net
docker network connect kong-net facef-design-apis-patients

:kong_setup
@echo starting kong...
copy %~1\kong.yml .
docker container run -d --name kong --network=kong-net -v "%CD%:/home/kong" -e "KONG_DATABASE=off" -e "KONG_DECLARATIVE_CONFIG=/home/kong/kong.yml" -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" -e "KONG_PROXY_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" -p 8000:8000 -p 8443:8443 -p 127.0.0.1:8001:8001 -p 127.0.0.1:8444:8444 kong:latest

:kong_update
echo "restarting kong..."
copy %~1\kong.yml .
docker container restart kong

:kong_stop
@echo "stoping kong..."
docker container stop kong

:kong_remove()
@echo "revoving kong..."
docker container rm kong

