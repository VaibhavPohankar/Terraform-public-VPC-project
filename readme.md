# Terraform Public VPC Project

This project provisions a basic AWS infrastructure using Terraform, following a clean parent–child module architecture.

## Architecture
The infrastructure consists of:
- A VPC
- An Internet Gateway
- A single public subnet
- A route table with internet access
- One EC2 instance

## Project Structure
The root (parent) module orchestrates the infrastructure and calls reusable child modules for:
- VPC
- Internet Gateway
- Public Subnet
- EC2

## Modules

### VPC
Creates the AWS VPC.

### IGW
Attaches an Internet Gateway to the VPC.

### Public Subnet
Creates the subnet, route table, and IGW route.

### EC2
Creates an EC2 instance and its security group.

## How to Run
```bash
terraform init
terraform plan
terraform apply
```
## To delete
```bash
terraform destroy
```
## Tags Strategy
Tags are managed using `merge()` to combine:
- Module default tags
- Environment-specific tags such as `Environment` and `Project`

This ensures consistency and reusability across modules.

# Author
Vaibhav_pohankar