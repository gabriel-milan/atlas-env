build:
	docker build --compress --no-cache -t lpsufrj/atlas-env:$(date '+%Y-%m-%d') .
	docker build --compress  -t lpsufrj/atlas-env:latest .
push:
	docker push lpsufrj/atlas-env:$(date '+%Y-%m-%d')
	docker push lpsufrj/atlas-env:latest
