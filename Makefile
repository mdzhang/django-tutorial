.PHONY: install run

install:
	pip install -r requirements/dev.txt

run:
	python manage.py runserver 0.0.0.0:8000
