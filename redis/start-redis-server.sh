#!/bin/bash

# Crea una rete Docker denominata redis_network
docker network create redis_network
# Lancia un container Docker nella rete redis_network di nome redis-server 
# partendo dall'immagine lightweight di redis, che si può ottenere attraverso
# docker pull. Il flag --rm rende automatica la rimozione del container
# all'uscita del container. Il container avviato svolgerà il ruolo di server.
docker run --rm --network=redis_network --name=redis-server sickp/alpine-redis
