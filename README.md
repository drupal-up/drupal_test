# Using this project for quickly installing a new Drupal instance.

## Starting

### Clone

```
git clone git@github.com:drupal-up/drupal_test.git drupal_new_project_name
```

### Final setup

> Delete the .git folder.
Set PROJECT_NAME in .env file.

```
./scripts/setup/final.sh
```

### Create the Docker containers

```
docker-compose up -d
```

### Install drupal

```
docker exec -it PROJECT_NAME_php scripts/docker/drupal_instance_install.sh
```
