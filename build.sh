#!/usr/bin/env bash
readonly OPENAPI_DOCKER='openapitools/openapi-generator-cli:v6.0.0-beta'
readonly ELIXIR_DOCKER='elixir:1.13'

build_client(){
    rm -rfv ./lib/*/api
    rm -rfv ./lib/*/model

    docker run --rm -v ${PWD}:/local:Z -w /local \
    --user "${UID}:${GID}" \
    ${OPENAPI_DOCKER} generate \
    -i /local/openapi.json \
    -o /local/ \
    --config openapi-conf.yml \
    --skip-validate-spec
}

format(){
    docker run -v ${PWD}:/local:Z -w /local --rm ${ELIXIR_DOCKER} mix format
}

main(){
    build_client
    format
}

main
