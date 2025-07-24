# 🚀 TechEazy DevOps Assignment – Automated EC2 Deployment using Terraform

## 📌 Overview

This project is a submission for the **TechEazy DevOps Assignment**, which demonstrates the complete **automation of deploying a Spring Boot application on an AWS EC2 instance using Terraform and shell scripting**. The goal was to ensure **zero manual steps** — everything from provisioning infrastructure to running the application is handled automatically.

---

## ⚙️ Tech Stack Used

- **Terraform** – Infrastructure provisioning
- **AWS EC2** – Compute resource for app hosting
- **Shell Scripting** – Bootstrapping & automation
- **Spring Boot (Java 21)** – Backend application
- **Apache Maven** – Java build tool
- **Git & GitHub** – Version control & PR workflow
---

## 🚀 How It Works (Automation Flow)

1. **Run the deploy script:**
   ```bash
   ./scripts/deploy.sh dev
   
2. **Terraform executes the following:**
  - Provisions a new EC2 instance
  - Applies security groups (port 80 open)
  - Injects the user_data.sh to configure the server

3. **Inside the EC2 Instance:**
  - Installs Java 21 and Maven
  - Clones the assignment GitHub repo
  - Builds the Spring Boot app using Maven
  - Runs the app on port 80
    
4. **Public IP is displayed in terminal :**
    http://your-public-ip


<h3>✅ Assignment Requirements Covered </h3>

- EC2 provisioning via Terraform
- Security group for port 80 (HTTP)
- Shell script installs Java, Maven
- App builds and runs automatically
- No manual steps involved
- GitHub repo with proper branching (main, dev)
- Pull request created & merged

<h3>🧠 What I Learned</h3>

- Hands-on experience with Infrastructure as Code (IaC) using Terraform
- Writing modular shell scripts for cloud automation
- Automating Java/Maven app deployment with user_data
- End-to-end DevOps CI/CD workflow using Git, PRs, and AWS

