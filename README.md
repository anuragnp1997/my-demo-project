# My Web Application

This repository contains a simple web application that is packaged in a Docker container. The project includes a CI/CD pipeline using GitHub Actions and a deployment script for deploying the container to a cloud service.

## Table of Contents
- [Build and Run Locally](#build-and-run-locally)
- [CI/CD Pipeline](#cicd-pipeline)
- [Deploy to Cloud](#deploy-to-cloud)

## Build and Run Locally

To build and run the Docker container locally, follow these steps:

1.Clone the Repository:

git clone https://github.com/anuragnp1997/my-demo-project.git
cd my-demo-project

Build the Docker Image:

docker build -t my-web-app .
Run the Docker Container:

docker run -d -p 8080:80 my-web-app

Access the Application:

Open your web browser and navigate to http://localhost:8080.

CI/CD Pipeline
This project uses GitHub Actions to automate the build and deployment process.

How It Works:
The CI/CD pipeline is defined in the .github/workflows/deploy.yml file.
The pipeline is triggered on every push to the main branch.
The pipeline performs the following steps:
Checks out the code.
Sets up Docker Buildx.
Logs into Docker Hub.
Builds the Docker image using the Dockerfile in the root directory.
Optionally, pushes the Docker image to Docker Hub.
How to Trigger the Pipeline:
Make changes to your code or Dockerfile.

Commit the changes:

git add .
git commit -m "Your commit message"
Push to the main branch:

git push origin main
The GitHub Actions workflow will automatically trigger and run the pipeline.


Deploy to Cloud
The repository includes a deployment script that allows you to deploy the Docker container to a cloud service.

AWS ECS Deployment
To deploy the container to Amazon ECS:

Ensure the AWS CLI is configured with the necessary permissions.

Update the deploy.sh script with your ECS cluster and service names.

Run the deployment script:

chmod +x deploy.sh
./deploy.sh
