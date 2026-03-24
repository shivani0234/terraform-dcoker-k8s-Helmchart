# 🚀 Nginx Deployment using Docker, Kubernetes & Helm

## 📌 Project Overview

This project demonstrates how to deploy a custom Nginx application using:

* Docker 🐳
* Kubernetes ☸️
* Helm 📦
* Minikube (local cluster)

---

## 📁 Project Structure

```
Terraform-docker/
│── app/
│   ├── Dockerfile
│   └── index.html
│

│   ├── templates/
│   ├── values.yaml
│   └── Chart.yaml
│
│── deployment.yaml
│── main.tf
```

---

## ⚙️ Prerequisites

Make sure you have installed:

* Docker
* Kubernetes (Minikube)
* Helm
* Git

---
<img width="1536" height="1024" alt="ChatGPT Image Mar 25, 2026, 03_17_28 AM" src="https://github.com/user-attachments/assets/723e8298-7bfa-4b7a-862a-a326bcdc6eab" />

## 🐳 Step 1: Build Docker Image

```bash
cd app
eval $(minikube docker-env)
docker build -t my-nginx-custom .
```

---

## ☸️ Step 2: Start Minikube

```bash
minikube start
```

---

## 📦 Step 3: Deploy using Helm

```bash
cd my-nginx-chart
helm install my-nginx .
```

---

## 🔍 Step 4: Verify Deployment

```bash
kubectl get pods
kubectl get svc
```

---

## 🌐 Step 5: Access Application

```bash
minikube service my-nginx-my-nginx-chart
```

Or manually:

```bash
minikube ip
```

Then open:

```
http://<minikube-ip>:<nodePort>
```

---

## 🛠 Troubleshooting

### ❌ ImagePullBackOff

Fix:

```bash
eval $(minikube docker-env)
docker build -t my-nginx-custom .
```

---

### ❌ Helm Installation Errors

Fix:

* Ensure values.yaml has required fields:

  * serviceAccount
  * ingress
  * autoscaling

---

## 🎯 Features

* Custom Nginx Docker Image
* Kubernetes Deployment & Service
* Helm Chart Deployment
* Local DevOps Setup with Minikube

---

## 🚀 Future Improvements

* Add Ingress Controller
* Deploy on AWS EKS
* Integrate CI/CD (GitHub Actions)
* Terraform automation

---

## 👩‍💻 Author

Shivani Kumari

---

## ⭐ If you like this project

Give it a star on GitHub ⭐
