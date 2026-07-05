# Task Manager Docker

## Build Docker Image

```bash
docker build -t task-manager:latest .
```

## Push Docker Image

```bash
docker tag task-manager:latest <registry>/<repository>/task-manager:latest
docker push <registry>/<repository>/task-manager:latest
```

Replace `<registry>/<repository>` with your Docker registry and repository.

## Run Docker Container

```bash
docker run -d --name task-manager -p 8080:8080 task-manager:latest
```

If you pushed the image, use the registry image name:

```bash
docker run -d --name task-manager -p 8080:8080 <registry>/<repository>/task-manager:latest
```
