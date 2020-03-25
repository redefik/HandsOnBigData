# Lancia un container che esegue un'istanza di Neo4j agganciando ad esso un
# volume per la persistenza. L'esposizione della porta 7474 ci permette di
# connetterci al database tramite il browser. La porta 7867 è la porta Bolt, che
# è usata dal browser per interagire con il database.

docker run -d -p 7474:7474 -p 7867:7867 --volume=$HOME/neo4j/data:/data --name my_neo neo4j:3.0
