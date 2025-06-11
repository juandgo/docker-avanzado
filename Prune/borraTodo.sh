#!/bin/bash

# Borra todas la imagenes sin etiqueta
docker image prune -a

# Borra todos los contenedores detenidos
docker container prune

# Borra todas las redes no utilizadas
docker network prune
# Borra todos los volúmenes no utilizados
docker volume prune

# Borra todos los objetos no utilizados
docker system prune -a

# Borra los datos de construcción no utilizados
docker builder prune