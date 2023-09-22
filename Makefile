install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main test_*.py

format:	
	black *.py 

lint:
	ruff check *.py test_*.py

		
all: install lint test format
