#!/usr/bin/env bash

docker-compose up -d db

echo "Creating superuser"
docker-compose exec --user postgres db /bin/bash -c "createuser -s djangotutorial"

echo "Creating database"
docker-compose exec --user postgres db /bin/bash -c "createdb -O djangotutorial djangotutorial"
