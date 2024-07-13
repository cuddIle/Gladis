install:
	poetry install

lock:
	poetry lock

lint:
	mypy gladis/
	flake8 gladis/
	black gladis/ --check
	isort gladis/ -c

fix:
	autoflake -r troll/
	black gladis/
	isort gladis/

bump-patch:
	bumpversion patch

bump-minor:
	bumpversion minor

bump-major:
	bumpversion major
