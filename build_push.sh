docker build -t ghcr.io/samuelvaneck/geo_lite_updater:latest .
echo $CR_PAT | docker login ghcr.io --username samuelvaneck --password-stdin
docker tag ghcr.io/samuelvaneck/geo_lite_updater:latest
docker push ghcr.io/samuelvaneck/geo_lite_updater:latest
