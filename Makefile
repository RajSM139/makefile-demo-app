build_docker:
	docker build -t makefile-demo-app .

run_docker:
	docker run --name makefile-demo-app -p 3000:3000 -d makefile-demo-app

stop_docker:
	docker stop makefile-demo-app

delete_image:
	docker rm makefile-demo-app

build_and_run: build_docker run_docker

stop_and_delete: stop_docker delete_image