#!/bin/sh

DECLARATIVE_CONFIG_SETUP="../01-Setup-Kong"
DECLARATIVE_CONFIG_AUTH="../02-Key-Authentication"
DECLARATIVE_CONFIG_CORRELATION_ID="../03-Correlation-ID"
DECLARATIVE_CONFIG_CACHE="../04-Cache"
DECLARATIVE_CONFIG_RESPONSE_TRANSFORMER="../05-Response-Transformer"
DECLARATIVE_CONFIG_RATE_LIMITING="../06-Rate-Limiting"

die () {
    echo >&2 "$@"
    exit 1
}

kong_setup_network() {
    docker network create kong-net
    docker network connect kong-net facef-design-apis-patients
}

kong_setup() {
    echo "starting kong..."
    cp $1/kong.yml .
    docker container run -d --name kong \
        --network=kong-net \
        -v "$PWD:/home/kong" \
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
}

kong_update() {
    echo "restarting kong..."
    cp $1/kong.yml .
    docker container restart kong
}

kong_stop() {
    echo "stoping kong..."
    docker container stop kong
}

kong_remove() {
    echo "revoving kong..."
    docker container rm kong
}

clean_all() {
    echo "cleaning..."
    rm kong.yml
    docker container stop kong
    docker container rm kong
    docker container stop facef-design-apis-patients
    docker container rm facef-design-apis-patients
    docker network rm kong-net
    docker image rm marcelofelixsalgado/facef-design-apis-patients:latest
    docker image rm kong:latest
}


[ "$#" -eq 1 ] || die "1 argument required, $# provided"

case "$1" in
    "setup-network") kong_setup_network ;;
    "setup-kong") kong_setup $DECLARATIVE_CONFIG_SETUP ;;
    "key-auth") kong_update $DECLARATIVE_CONFIG_AUTH ;;
    "correlation-id") kong_update $DECLARATIVE_CONFIG_CORRELATION_ID ;;
    "cache") kong_update $DECLARATIVE_CONFIG_CACHE ;;
    "response-transformer") kong_update $DECLARATIVE_CONFIG_RESPONSE_TRANSFORMER ;;
    "rate-limiting") kong_update $DECLARATIVE_CONFIG_RATE_LIMITING ;;
    "stop") kong_stop ;;
    "remove") kong_remove ;;
    "clean-all") clean_all ;;
	*) 
        echo "Invalid argument value"
        exit 1 ;;
esac
