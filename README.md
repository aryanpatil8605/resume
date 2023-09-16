# Resume CI/CD Pipeline with Jenkins

## Introduction

This repository documents the setup and configuration of a highly automated Continuous Integration and Continuous Deployment (CI/CD) pipeline for the "Resume" project using Jenkins, hosted on an AWS EC2 instance. The pipeline automates the building and deployment of a Dockerized web application whenever changes are pushed to the GitHub repository.

## Table of Contents

- [Project Components](#project-components)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Configuration](#configuration)
  - [AWS EC2 Instance Setup](#aws-ec2-instance-setup)
  - [Jenkins Configuration](#jenkins-configuration)
  - [GitHub Integration](#github-integration)
  - [Jenkins Pipeline](#jenkins-pipeline)
  - [Declarative SCM](#declarative-scm)
  - [Docker Hub Configuration](#docker-hub-configuration)
- [Usage](#usage)
  - [Running the Pipeline](#running-the-pipeline)
  - [Monitoring and Accessing the Application](#monitoring-and-accessing-the-application)
- [Troubleshooting](#troubleshooting)
- [Additional Resources](#additional-resources)
- [Author](#author)

## Project Components

- **GitHub Repository**: The "Resume" project repository on GitHub containing the source code, Dockerfile, and web assets.

- **AWS EC2 Instance**: The virtual machine hosting the Jenkins server, which is responsible for automating the CI/CD workflow.

- **Jenkins**: An open-source automation server that manages the CI/CD workflow. Jenkins is used to build, test, and deploy the application.

## Getting Started

### Prerequisites

- An AWS account with an EC2 instance ready for hosting Jenkins.
- A GitHub account with administrative access to the "Resume" repository.
- Docker Hub account for storing Docker images.

### Installation

1. **AWS EC2 Instance Setup**:
   - Launch an EC2 instance with an appropriate Amazon Machine Image (AMI).
   - SSH into the EC2 instance and install Jenkins. Refer to the [official Jenkins installation guide](https://www.jenkins.io/doc/book/installing/) for details.

2. **Jenkins Configuration**:
   - Access Jenkins via the web interface on port 8080, complete the initial setup, and install required plugins.
   - Configure global settings, including Docker credentials, GitHub webhook, and environment variables.

## Configuration

### AWS EC2 Instance Setup

- Create an AWS EC2 instance with the necessary network and security configurations.
  [Inbond rules](https://github.com/aryanpatil8605/resume/assets/110778079/10a7b05c-0759-4f00-a1ed-0b2c50c223d7)
- SSH into the instance and install Jenkins following the official guide.

### Jenkins Configuration

- Set up Jenkins with plugins and global configurations to match your requirements.
- Define environment variables and secrets for secure access to sensitive data.

### GitHub Integration

- Configure a GitHub webhook for your repository to trigger the Jenkins pipeline on every push event. Set the payload URL to match your Jenkins server's URL and include the `/github-webhook/` endpoint.

### Jenkins Pipeline

- Create a Jenkinsfile or declarative pipeline script to define your CI/CD pipeline stages. Include steps for cloning the repository, building the Docker image, pushing it to Docker Hub, and deploying the container.

### Declarative SCM

- Utilize Jenkins Declarative SCM to streamline source code management within your pipeline. Declarative SCM simplifies the integration of source control, allowing for version control and automation of repository interactions.

### Docker Hub Configuration

- Ensure you have a Docker Hub account and a repository set up to store your Docker images.
- Configure Jenkins with Docker Hub credentials for image pushing.
![Docker hub ](https://github.com/aryanpatil8605/resume/assets/110778079/8035771e-964e-41d2-9da1-066becdf77cf)

## Usage

### Running the Pipeline

- Commit changes to your GitHub repository to trigger the Jenkins pipeline automatically.
- Monitor pipeline progress in the Jenkins web interface under the "Builds" or "Pipelines" section.
  ![declerative](https://github.com/aryanpatil8605/resume/assets/110778079/b19b8171-10fe-45cd-9e59-272dcc82dbce)

### Monitoring and Accessing the Application

- Once the pipeline is successfully completed, access the deployed web application using the EC2 instance's public IP address or domain name, typically on port 8000 (assuming port 8000 is exposed in your Docker container).
  ![resume](https://github.com/aryanpatil8605/resume/assets/110778079/6f5646a9-521e-408e-87ad-c46ba7bacc2b)

## Troubleshooting

- In case of issues with the pipeline or Jenkins setup, consult the documentation of Jenkins, GitHub, Docker, and AWS EC2 for troubleshooting guidance.

## Additional Resources

- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [GitHub Webhooks Documentation](https://docs.github.com/en/developers/webhooks)
- [Docker Documentation](https://docs.docker.com/)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)

## Author

- Aryan Rakesh Patil
- More Info - [https://aryanpatil8605.github.io/resume/](https://aryanpatil8605.github.io/resume/)
