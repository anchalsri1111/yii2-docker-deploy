#!/bin/bash

GITHUB_USERNAME="anchalsri1111"
REPO_NAME="yii2-docker-deploy"

# Initialize git and push to GitHub
git init
git remote add origin git@github.com:$GITHUB_USERNAME/$REPO_NAME.git
git add .
git commit -m "Initial commit of Yii2 app"
git branch -M main
git push -u origin main

