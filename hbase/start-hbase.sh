#!/bin/bash

# Lancia un container Docker su cui esegue un'istanza pseudo-distribuita di
# HBase. Come si vede ci sono molte porte da esporre. Tra queste 2181 è la porta
# di Zookeeper, 16000 è la porta dove risponde il master. Con -h si indica l'hostname
# associato al container. Questo deve poi essere aggiunto in etc/hosts. NB: potrebbe
# essere necessario esporre ulteriori porte quando si prova a connettersi a HBase
# ad esempio da un'applicazione Java.

docker run -ti --name=hbase-docker -h hbase-docker -p 2181:2181 -p 8080:8080 -p 8085:8085 -p 9090:9090 -p 9095:9095 -p 16000:16000 -p 16010:16010 -p 16201:16201 -p 16301:16301 -p 16020:16020 harisekhon/hbase:1.4
