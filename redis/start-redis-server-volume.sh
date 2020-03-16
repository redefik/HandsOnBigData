#!/bin/bash

# Usare questo script se si vuole agganciare un volume a Redis, così da non
# perdere il lavoro svolto quando si esce dal container e vi si rientra.
# I dati vengono passati dalla directory data del container a quella tmp
# fuori dal container precedentemente creata

mkdir tmp
docker network create redis_network
docker run --rm --network=redis_network --name=redis-server -v tmp:/data sickp/alpine-redis
