APP_LIST ?= apps.polls

.PHONY: bash build console install lint open psql run setup setup_db setup_web stop test

bash:
	docker-compose run web /bin/bash

build:
	docker-compose build

console:
	docker-compose run web python manage.py shell

install:
	pip install -r requirements/dev.txt

lint:
	flake8 .

open:
	open http://$$(docker-machine ip):8000

psql:
	docker-compose exec --user postgres db /bin/bash -c "psql -U postgres -d djangotutorial"

run:
	docker-compose up

setup: run setup_db setup_web

setup_db:
	docker-compose run db ./scripts/db/setup.sh

setup_web:
	docker-compose run web ./scripts/web/setup.sh

stop:
	docker-compose down

test:
	docker-compose exec web /bin/bash -c "python manage.py test $(APP_LIST)"
