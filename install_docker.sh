#!/bin/bash

# Install Docker
sudo yum update
sudo yum install -y docker.io

# Verify Docker installation
docker --version

# Initialize a git repository if not already initialized
if [ ! -d ".git" ]; then
    git init
fi

# Add Docker files to git
git add .
git commit -m "Add Docker files"

# Push to your Git repository
# Replace <YOUR_REMOTE_REPO_URL> with your Git repository URL
git remote add origin <git@github.com:fsantosjr/demo-repo.git>
git push -u origin master

