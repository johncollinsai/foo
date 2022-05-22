#!/bin/bash
# this script is used to boot a Docker container
# see https://github.com/miguelgrinberg/microblog/blob/main/boot.sh

source venv/bin/activate

# following https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/blob/main/hello-app/Dockerfile
exec gunicorn -b :8080 --access-logfile - --error-logfile - foo:app
