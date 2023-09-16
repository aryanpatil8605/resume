pipeline {
    agent any
    stages {
        stage("Code Clone") {
            steps {
                echo "Cloning the code"
                git url: "https://github.com/aryanpatil8605/resume.git", branch: "main"
            }
        }
        stage("Build Image") {
            steps {
                echo "Building the code"
                sh "docker build -t aryan8605/resume:latest ."
            }
        }
        stage("Push to Docker Hub") {
            steps {
                echo "Pushing the image to Docker Hub"
                sh "docker login -u aryan8605 -p Aryan@8605"
                sh "docker push aryan8605/resume:latest"
            }
        }
        stage("Deploy") {
            steps {
                echo "Deploy the Container"
                sh "docker stop resume-container || true"  // Stop and remove the previous container if it exists
                sh "docker rm resume-container || true"
                sh "docker run -d -p 8000:8000 --name resume-container aryan8605/resume:latest"
            }
        }
    }
}
