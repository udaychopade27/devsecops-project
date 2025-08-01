# **DevSecOps Infrastructure Setup using Terraform & Ansible**

This project provisions two AWS EC2 instances and installs Jenkins and Docker using Ansible. It is designed as part of a DevSecOps Capstone project.

---

## 📁 **Repository Structure**
```text . 
├── README.md
├── ansible
│ ├── docker.yml
│ ├── inventory.ini
│ └── jenkins.yml
└── terraform
   ├── instances.tf
   ├── main.tf
   ├── outputs.tf
   ├── security_groups.tf
   ├── terraform.tfstate
   ├── terraform.tfstate.backup
   ├── terraform.tfvars
   └── variables.tf
```

---

## 🔧 Tools Used

- **Terraform** – To provision infrastructure (EC2 instances, security groups)
- **Ansible** – To configure the servers (install Docker and Jenkins)
- **AWS EC2** – Virtual machines for deploying Jenkins and Docker

---

## 🚀 **Getting Started**

### 1. Clone the repository

```bash
git clone https://github.com/udaychopade27/devsecops-project.git
cd devsecops-project
```
# 🏗️ **Step-by-Step Usage Guide**

## 🌐 **Step 1: Provision AWS Infrastructure using Terraform**

### Navigate to Terraform directory:
```bash
cd terraform
```
### Initialize Terraform:
```bash
terraform init
```
### Edit terraform.tfvars to provide your input variables:
```bash
aws_region       = "ap-south-1"
instance_type    = "t2.micro"
key_name         = "your-key-name"
public_key_path  = "~/.ssh/<privte-key.pem>"
```
### Apply the configuration:
```bash
terraform apply
```
### After successful apply, note down the public IPs of the two EC2 instances.

---

## ⚙️ **Step 2: Configure Servers with Ansible**
### Navigate to the Ansible directory:
```bash
cd ansible
```
### Edit inventory.ini with the public IPs of the provisioned instances:
```bash
[jenkins]
<jenkins_public_ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa

[docker]
<docker_public_ip> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
```
### Install Jenkins on the Jenkins EC2 instance:
```bash
ansible-playbook -i inventory.ini jenkins.yml
```
### Install Docker on the Docker EC2 instance:
```bash
ansible-playbook -i inventory.ini docker.yml
```

---

## 🗂️ **Terraform Directory (/terraform)**
| File Name            | Description                             |
| -------------------- | --------------------------------------- |
| `main.tf`            | AWS provider and key pair configuration |
| `instances.tf`       | Defines EC2 instances                   |
| `security_groups.tf` | Security group rules (SSH, HTTP, etc.)  |
| `variables.tf`       | Input variable definitions              |
| `terraform.tfvars`   | Actual values for Terraform variables   |
| `outputs.tf`         | Prints public IPs of instances          |

---

## 🧰 **Ansible Directory (/ansible)**
| File Name       | Description                                       |
| --------------- | ------------------------------------------------- |
| `inventory.ini` | Hosts file for Jenkins and Docker EC2 instances   |
| `jenkins.yml`   | Installs Java and Jenkins on the Jenkins instance |
| `docker.yml`    | Installs Docker and Docker Compose on Docker host |

---

## ✅ **Requirements**
* Terraform ≥ 1.0
* Ansible ≥ 2.9
* AWS CLI configured with credentials
* Valid AWS EC2 key pair (.pem file)
* SSH access to EC2 instances

---

📬 **Contact**  
Created by: **Uday Chopade**  
📧 [LinkedIn](https://www.linkedin.com/in/udaychopade27) | 🗂️ [GitHub](https://github.com/udaychopade27)

---
