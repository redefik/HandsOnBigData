#!/bin/bash

# Lancia un container Docker che svolge il ruolo di client a partire dalla
# immagine lightweight di redis. Questo container svolgerà il ruolo di client.
# Affinché esso si connetta all'host server si specifica il redis-server
# precedentemente avviato preceduto da -h. -it indica che si aprirà un terminale
# interattivo.
docker run --rm --net=redis_network -it sickp/alpine-redis redis-cli -h redis-server
