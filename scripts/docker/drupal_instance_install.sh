#!/usr/bin/env sh

# The folder with the composer.json file in the context of wodby/docker4drupal.
cd /var/www/html

composer install

# Changing to the Drupal web folder.
cd /var/www/html/web

# Installing Drupal with the default values from wodby/docker4drupal.
../vendor/bin/drush site:install -db-url=mysql://drupal:drupal@mariadb:3306/drupal

# Clearing the cache.
../vendor/bin/drush cr

echo "Visit http://drupal_test.localhost:8000/ for your local drupal setup."
