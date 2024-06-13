#!/bin/bash

if [ -z "$GIT_REPO_URL" ]; then
  echo "GIT_REPO_URL environment variable is not set."
  exit 1
fi

if [ ! -d ".git" ]; then
  echo "Cloning Git repository..."
  git clone $GIT_REPO_URL .
fi

while true
do
  echo "Pulling from Git repository..."
  git pull
  echo "Pull completed. Waiting for 30 seconds..."
  sleep 30
done
