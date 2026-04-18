📦 Terraform Multi-Environment Infrastructure (EC2, S3, DynamoDB)

This project demonstrates how to provision AWS infrastructure using Terraform modules across multiple environments:

dev (Development)
stg (Staging)
prod (Production)



🏗️ Architecture Overview

The project provisions the following AWS resources:

EC2 Instance – Compute resource
S3 Bucket – Object storage
DynamoDB Table – NoSQL database

Each resource is created using reusable Terraform modules.


📁 Project Structure
terraform-project/
│
├── modules/
│   ├── ec2/          # EC2 module
│   ├── s3/           # S3 module
│   └── dynamodb/     # DynamoDB module
│
├── environments/
│   ├── dev/          # Development environment
│   ├── stg/          # Staging environment
│   └── prod/         # Production environment
│
└── provider.tf       # AWS provider configuration
