
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
	pytest -vv cov=mylib 
deploy:
	#deploy
all: install lint test deploy


	 
