# AWS EKS GitOps Platform

Production-grade Kubernetes platform on AWS built with Infrastructure as Code, CI/CD automation, and GitOps principles.

## 🚀 Overview

This project demonstrates how to design, deploy, and operate a scalable containerized application using Kubernetes on AWS.

The platform provisions a secure EKS cluster using Terraform, deploys a Flask application using Helm, and automates the full deployment lifecycle using GitHub Actions.

## 🧱 Architecture

- Amazon EKS cluster with managed node group
- Dockerized Flask application stored in ECR
- Helm charts for Kubernetes deployment
- GitHub Actions CI/CD pipeline (OIDC authentication)
- Kubernetes services for internal/external exposure

## ⚙️ CI/CD Pipeline Flow

1. Developer pushes code to GitHub  
2. GitHub Actions builds Docker image  
3. Image is pushed to Amazon ECR  
4. Helm deploys the application to Amazon EKS  
5. Kubernetes schedules pods on worker nodes  
6. Service exposes the application  
7. Application is accessed via port-forwarding  

## 🛠 Tech Stack

- AWS: EKS, ECR, VPC, IAM  
- Terraform (modular infrastructure)  
- Helm (Kubernetes package manager)  
- GitHub Actions (CI/CD with OIDC)  
- Python Flask  

## 📸 Deployment Walkthrough

### 1. EKS Cluster Provisioned
![EKS Cluster](docs/screenshots/eks-cluster-console.jpg)

### 2. Node Group Created
![EKS Node Group](docs/screenshots/eks-node-group.png)

### 3. Kubernetes Nodes Registered
![Kubernetes Nodes](docs/screenshots/k8s-nodes.jpg)

### 4. Application Pods Running
![Kubernetes Pods](docs/screenshots/k8s-pods-all.jpg)

### 5. Service Exposes Application
![Kubernetes Services](docs/screenshots/k8s-services.jpg)

### 6. Deployment Configuration
![Deployment Details 1](docs/screenshots/k8s-deployment-details-1.jpg)
![Deployment Details 2](docs/screenshots/k8s-deployment-details-2.jpg)

### 7. Application Accessible (Port Forward)
![Flask App Running](docs/screenshots/flask-app-port-forward.jpg)

## 📈 Key Outcomes

- Built a fully automated CI/CD pipeline for Kubernetes deployments  
- Deployed and managed containerized workloads on AWS EKS  
- Implemented Infrastructure as Code using Terraform  
- Demonstrated end-to-end application lifecycle from code to deployment  

## 🔮 Next Steps (Level 2 & 3)

- GitOps deployment with ArgoCD  
- Ingress controller for external access  
- Horizontal Pod Autoscaling (HPA)  
- Prometheus & Grafana monitoring  
- RBAC and Kubernetes security hardening  
