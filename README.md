# TF-Module-Gitlab-CICD-Project

In this project you will learn how to create and automate your infrastructure using modules in terraform and CICD it using Gitlab.

# Terraform Modular AWS Infrastructure

This project provisions a modular AWS infrastructure using Terraform. It includes:

- A custom **VPC**
- A **Security Group** allowing traffic to/from your instance
- An **EC2 instance** with configurable parameters
- Modular Terraform structure for reusability and clarity

---

## 📁 Project Structure

TF-Module-Gitlab-CICD-Project/  
├── main.tf                     # Root module calling submodules  
├── outputs.tf                  # Root module outputs  
├── variables.tf                # Root module variables (optional)  
├── modules/  
│   ├── vpc/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   └── outputs.tf  
│   ├── security-groups/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   └── outputs.tf  
│   └── ec2/  
│       ├── main.tf  
│       ├── variables.tf  
│       ├── outputs.tf  
│       ├── my_key.pub          # Public SSH key (do NOT commit)  
│       └── my_key              # Private key (do NOT commit)  

---

## 🧱 Modules Overview

### ✅ VPC Module
- Creates a VPC with a specified CIDR block  
- Creates a public subnet  

### ✅ Security Group Module
- Allows inbound traffic on ports 22 (SSH), 80 (HTTP), and 443 (HTTPS)  
- Accepts VPC ID as input  

### ✅ EC2 Module
- Launches an EC2 instance in the public subnet  
- Attaches the security group  
- Uses a key pair (provided in the module)  
- Root volume is configurable  

---

## 🚀 How to Use

1. **Configure AWS credentials**

Use `aws configure` or export environment variables:

```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_DEFAULT_REGION=us-east-2


## RUN
terraform init
terraform validate
terraform plan
terraform apply

📦 Outputs
  After applying, Terraform will show:
    EC2 public and private IP
    Public DNS
    EC2 instance state
📄 License
    MIT — Use freely, but at your own risk.
