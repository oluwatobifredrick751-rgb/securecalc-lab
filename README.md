# SecureCalc Lab

A secure, monitored, and self-healing Python calculator deployed on AWS using **ALB + Private EC2** architecture.

## Project Overview

This project demonstrates how to build a simple application with **enterprise-grade security, monitoring, and automation** practices on AWS. Even though it's "just a calculator", it was treated as a production workload.

**Live URL**: http://securecalc-lab-alb-661141501.us-east-1.elb.amazonaws.com

## Architecture

- **ALB** (Public) as the single entry point
- **Private EC2** running Streamlit (completely hidden from the internet)
- Traffic flow: Internet → ALB → Target Group → Private EC2
- Hardening: Private subnet, strict Security Groups, least-privilege IAM, IMDSv2, SSM-only access

## Features

- Enhanced Streamlit Calculator with:
  - Basic & Scientific mode
  - Calculation history
  - Dark/Light theme toggle
- Auto-start with systemd service
- Real-time monitoring with CloudWatch
- Automated remediation (Lambda + EventBridge + SNS)

## Tech Stack

- **IaC**: Terraform
- **Frontend**: Streamlit (Python)
- **Infrastructure**: VPC, ALB, Private EC2
- **Monitoring**: Amazon CloudWatch + Alarms + Dashboard
- **Automation**: AWS Lambda, EventBridge, SNS

## Cost Estimation

| Component                  | Monthly Cost (USD)     | Notes |
|---------------------------|------------------------|-------|
| EC2 (t3.micro)            | $0 – $8                |Low cost 
| ALB + NAT Gateway         | $1 – $3                | Main cost drivers |
| CloudWatch + Lambda       | <$0.50                 | Low cost
| **Total**                 | **~$2 – $12**          | Reasonable and affordable

## Setup Instructions

1. Clone the repository
2. Update `terraform.tfvars` (your IP)
3. Run `terraform init && terraform apply`
4. Connect via SSM and deploy the app
5. Access via ALB DNS name

## Lessons Learned

- Private subnets + ALB is a strong security pattern
- Treating small apps with production practices builds strong habits
- Automation (Lambda) is powerful for self-healing
- Proper monitoring saves a lot of troubleshooting time

## Future Improvements

- Implement Auto Scaling Group
- Add HTTPS using AWS Certificate Manager
- Add a database (DynamoDB/RDS) for calculation history
- CI/CD pipeline with GitHub Actions

## Screenshots

*(Add here: ALB URL, Calculator UI, CloudWatch Dashboard, Lambda logs, etc.)*

---

**Project Status**: Completed (5-Day Roadmap + Enhancements)

Built as a hands-on project to practice **Secure, Scalable, and Automated** cloud architecture on AWS.
