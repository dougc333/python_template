
.PHONY: test src

install:
	#install
	pip install --upgrade pip && pip install -r requirements.txt
format:
	#format
	black *.py mylib/*.py
lint:
	#lint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=test
deploy:
	#deploy
all: install lint test deploy


	 
