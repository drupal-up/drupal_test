#!/bin/bash

# delete .git folder
chmod 777 -R .git
rm -R .git

# set project name
echo 'The short name of your project [e.g. drupal_backendtests]'
read CUSTOM_DRUPAL_NAME
sed -i '' -e "s/drupy_test_instance_name/$CUSTOM_DRUPAL_NAME/" .env
