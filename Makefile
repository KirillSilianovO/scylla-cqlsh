build:
	docker build -t kirillsilianov/cqlsh:latest .

push:
	docker push kirillsilianov/cqlsh:latest

build-push:
	docker build -t kirillsilianov/cqlsh:latest .
	docker push kirillsilianov/cqlsh:latest