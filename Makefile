install:
	pip install --upgrade pip && pip install -r requirements.txt
	
format:
	black *.py
	
install-azure:
	pip install --upgrade pip && pip install -r requirements-azure.txt

lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: lint test