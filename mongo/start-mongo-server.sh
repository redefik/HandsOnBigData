#!/bin/bash

# Crea una rete docker di nome mongonet, che conterrà il server e il client
# MongoDB
docker network create mongonet
# Lancia il container server
# -i -t --> si apre un terminale interattivo
# --name --> nome del container (altrimenti generato random)
# --network --> rete di appartenenza
# mongo:latest è l'immagine da cui viene istanziato il container
# mongod avvia il server
# --bind_ip_all indica che il server accetterà connessioni da ogni host
# -p mappa la porta 27017 sulla 27017 (porta di ascolto del server)
docker run -i -t -p 27017:27017 --name mongo_server --network=mongonet mongo:latest /usr/bin/mongod --bind_ip_all
