.PHONY: build run delete

# Deletes the container
delete:
	docker rm -f postgresql || true

# Creates the image
build: delete
	docker build -t postgresql . 

# Runs the image
run: build
	docker run -d \
		--name postgresql \
		-p 5432:5432 \
		--env-file .env \
		postgresql
