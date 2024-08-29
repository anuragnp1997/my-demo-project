#!/bin/bash

# Variables
CLUSTER_NAME="your-ecs-cluster-name"
SERVICE_NAME="your-ecs-service-name"
IMAGE_NAME="${DOCKER_USERNAME}/my-web-app:latest"

# Update ECS service with the new image
aws ecs update-service \
  --cluster $CLUSTER_NAME \
  --service $SERVICE_NAME \
  --force-new-deployment \
  --query service.taskDefinition
