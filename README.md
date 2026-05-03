# SecureCalc Lab

A secure, monitored, and automated Python calculator deployed on AWS using ALB + private EC2 architecture.

## Architecture Overview

- **ALB** (public) as the single entry point
- **Private EC2** running Streamlit calculator (hidden from internet)
- Traffic flow: Internet → ALB → Target Group → Private EC2
- Hardening: Private subnet, least-privilege IAM, SSM-only access, IMDSv2

## Features

- Enhanced Streamlit calculator (Basic + Scientific mode, history, dark/light theme)
- Auto-start with systemd
- CloudWatch monitoring and alarms
- Automated remediation with AWS Lambda + EventBridge + SNS

## Tech Stack

- Terraform (IaC)
- Streamlit (Python)
- AWS (VPC, ALB, EC2, CloudWatch, Lambda, EventBridge, SNS)

## Setup

1. Clone the repo
2. Update `terraform.tfvars` with your IP
3. `terraform init && terraform apply`
4. Connect to EC2 via SSM and deploy the app

## Screenshots

( Add your screenshots here: ALB URL, Calculator UI, Dashboard, Lambda logs )

## Lessons Learned

- Importance of private subnets and proper Security Group design
- Building real automation with Lambda
- Treating even a simple app as production workload

## Future Improvements

- Auto Scaling Group
- HTTPS on ALB
- Database integration
- CI/CD pipeline

---

**Project Status**: Completed with ALB architecture and self-healing automation.

Built as part of a 5-day hands-on AWS security & automation project.
