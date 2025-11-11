
# Maven Web App Deployment with Docker & Kubernetes

[![Build Status](https://img.shields.io/jenkins/build?job=Maven-Web-App)](https://your-jenkins-url/job/Maven-Web-App)
[![Docker Image](https://img.shields.io/docker/v/ashokit/mavenwebapp)](https://hub.docker.com/r/ashokit/mavenwebapp)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

---

## 🚀 Overview
This repository contains a simple **Java Maven web application** that is:
- Containerized using **Docker**  
- Deployed on **AWS EKS Kubernetes cluster**  
- Integrated with **Jenkins CI/CD pipeline**
- 
The project demonstrates a complete DevOps workflow: build, containerize, and deploy.

---

## 📂 Project Structure
maven-web-app/
├── Dockerfile # Dockerfile for Tomcat image
├── Jenkinsfile # Declarative Jenkins Pipeline
├── k8s-deploy.yml # Kubernetes Deployment & Service
├── pom.xml # Maven project configuration
├── src/ # Java source files
├── README.md # Project documentation
└── screenshots/ # Optional: pipeline and app screenshots

yaml
Copy code

---

## ⚙️ Prerequisites
- Java & Maven installed
- Docker installed and running
- AWS CLI configured for your EKS cluster
- kubectl installed
- Jenkins (optional, for CI/CD)

---

## 💻 Local Setup

### 1. Build Maven Project
```bash
mvn clean package
2. Build Docker Image
bash
Copy code
sudo docker build -t ashokit/mavenwebapp .
3. Run Docker Container
bash
Copy code
sudo docker run -d -p 8080:8080 ashokit/mavenwebapp
Open in browser:

arduino
Copy code
http://localhost:8080/
⚠️ If you want the app at root (/), rename the WAR to ROOT.war in Dockerfile.

☸️ Kubernetes Deployment
1. Configure kubeconfig
bash
Copy code
aws eks update-kubeconfig --region <region> --name <cluster-name>
2. Apply Deployment & Service
bash
Copy code
kubectl apply -f k8s-deploy.yml
3. Check Resources
bash
Copy code
kubectl get pods
kubectl get svc
Access the app via the LoadBalancer EXTERNAL-IP.

🧪 CI/CD Pipeline (Jenkins)
Automates build, Docker image creation, and Kubernetes deployment

Uses Jenkinsfile (Declarative Pipeline)

Jenkins must have Docker and kubectl configured


🖼️ Application Screenshot




Ensure no other service uses port 8080 when running Docker.

Scale nodes in EKS if pods remain in Pending state.

WAR should be deployed correctly; if /maven-web-app shows 404, check Dockerfile WAR path.

📫 Author
Nitin Dodamani
Email:dodamanin8@gmail.com
LinkedIn: https://linkedin.com/in/nitindodamani
