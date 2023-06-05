.PHONY: build run delete

# Deletes the container
stop:
	docker compose down
	docker rmi postgresql || true
	docker rmi connect || true

# Runs the image
run: stop
	docker compose up
