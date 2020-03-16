#!/bin/bash

# Lancia il container dove si andrà ad eseguire (da shell) il client MongoDB
# In particolare, dopo l'avvio bisognerà digitare il comando:
# mongo mongo_server:27017
docker run -i -t --name mongo_cli --network=mongonet mongo:latest /bin/bash
