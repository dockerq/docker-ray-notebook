build:
	docker build -t dockerq/ray-notebook .

dev:
	docker run -d --name ray --net host \
		-v `pwd`/data:/home/jovyan/work \
		dockerq/ray-notebook

clean:
	docker stop ray
	docker rm ray
