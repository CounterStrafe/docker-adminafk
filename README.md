# docker-adminafk

Docker Compose for spinning up eBot, eBot Web, and AdminAFK on a single server 

## Requirements

Docker: https://docs.docker.com/install/  
Docker Compose: https://docs.docker.com/compose/install/

## Deployment

This starts the services in the background:
```
$ docker-compose up -d
```

## Usage

eBot Ports: 12360 and 12361 for tcp/udp  
eBot Web Public Page: `http://localhost/`  
eBot Web Admin Page: `http://localhost/admin.php`  
AdminAFK Public Page: `http://localhost/adminafk/`  
AdminAFK Admin Page: `http://localhost/adminafk/admin.php`
