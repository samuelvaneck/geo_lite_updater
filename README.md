# Cron updater for the GeoLite2-City database

## Step 1
Obtain a license from MaxMind

## Step 2
Create .env file in the root of your directory. Add the license key you obtained from MaxMind to the key `GEO_IP_LICENSE_KEY`

## Step 3
Build your docker container
```
docker build -t container_name .
```
## Step 4
Run the docker container
```
docker run --env-file ./env ghcr.io/samuelvaneck/geo_lite_updater
```

## Cron schedule
The docker container can run with the docker-compose file. For an example check the `docker-compose.example.yml` file. If a CRON_SCHEDULE env variable is added the script will run on that schedule.

You can manually run the download:
```
docker-compose exec geo_lite_updater ./action.sh
```
