.PHONY: build_dev_images up


up: build_dev_images
	docker-compose up

build_dev_images:
	docker build -t ge-profiler-test-api ./
