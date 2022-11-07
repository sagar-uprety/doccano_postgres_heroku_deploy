#!/bin/bash

echo "Login to Heroku" && \
heroku container:login || \
echo "Building Docker Container and Pushing to Heroku" && \

# Please pass your heroku app name while running the script && \
heroku container:push web --app $1 && \

echo "Releasing the new version of the app" && \
heroku container:release web --app $1 && \

echo "Opening up the app on your browser" && \
heroku open --app $1