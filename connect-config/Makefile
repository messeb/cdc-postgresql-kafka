.PHONY: build run

build:
	docker rm -f connect || true
	docker build -t connect-config . 

run: build
	docker run \
		-it \
		--rm \
		connect-config
