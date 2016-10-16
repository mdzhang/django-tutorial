.PHONY: build console open psql run stop

build:
	docker-compose build

console:
	docker-compose exec web /bin/bash -c "python manage.py shell"

lint:
	docker run djangotutorial_web flake8

open:
	open http://$$(docker-machine ip):8000

psql:
	docker-compose exec --user postgres db /bin/bash -c "psql -U postgres -d djangotutorial"

run:
	docker-compose up

stop:
	docker-compose down
