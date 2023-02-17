
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
build:
	#build
	docker build -t deploy-fastapi .
run:
	#run docker
	docker run -p 127.0.0.1:8080:8080 9952ee8422de
deploy:
	#aws
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 669059827483.dkr.ecr.us-east-1.amazonaws.com
	#aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 669059827483.dkr.ecr.us-west-1.amazonaws.com
	docker build -t fastapi-wiki .
	docker tag fastapi-wiki:latest 669059827483.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest
	docker push 669059827483.dkr.ecr.us-east-1.amazonaws.com/fastapi-wiki:latest

all: install lint test deploy


	 
