build:
	docker build --compress --no-cache -t ringeratlas/atlas-env:$(date '+%Y-%m-%d') .
	docker build --compress  -t ringeratlas/atlas-env:latest .
push:
	docker push ringeratlas/atlas-env:$(date '+%Y-%m-%d')
	docker push ringeratlas/atlas-env:latest
