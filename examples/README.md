This module creates a VPC with public and private subnets across multiple availability zones. It provisions NAT gateways for private subnets and sets up route tables accordingly. Additionally, it allows for customization of VPC attributes such as CIDR block, subnet configurations, and tags.

Prerequisites
Before deploying this module, ensure you have:

An AWS account with appropriate credentials and permissions to create VPC resources.
Terraform installed on your local machine. Use Environment variable to test code

Usage
Run the code from the examples folder

Navigate to the Module Directory: Change into the directory containing the VPC module named Phillips Project

cd examples

Modify terraform.tfvars as needed foir your needs

Initialize Terraform: Initialize the Terraform working directory.


Plan the Deployment: Run Terraform plan to preview the changes that will be applied.

terraform plan
Apply the Changes: If the plan looks good, apply the changes to create the VPC resources.


terraform apply
Confirm Changes: Review the proposed changes and type yes when prompted to confirm.

Clean Up: When you're done, you can destroy the VPC resources to clean up by running terraform destroy


