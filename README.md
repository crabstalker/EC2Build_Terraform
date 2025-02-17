# EC2Build_Terraform
AWS project to build EC2 instance using Terraform


## Overview
This project uses Terraform to build and manage an EC2 instance on AWS. Terraform is an infrastructure as code tool that makes it easy to provision and manage cloud resources.

## Prerequisites
Before you begin, ensure you have the following installed on your local machine:
- [Terraform](https://www.terraform.io/downloads.html)
- AWS CLI configured with your credentials

## Installation
Clone this repository to your local machine:
```bash


EC2Build_Terraform/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md


git clone https://github.com/crabstalker/EC2Build_Terraform.git
cd EC2Build_Terraform

create a terraform project folder
  using vi main.tf we will edit the file with the following code

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "NCAA_Server" {
  ami           = "ami-085ad6ae776d8f09c"
  instance_type = "t2.micro"

  tags = {
    Name = "NCAA Server"
  }
}

Next hit the escape button then type wq! to save contents into the main.tf file.

## After code has been setup we will have to enable ( intialize terraform)

  Initialize the Terraform configuration:
    terraform init

Plan the Terraform deployment
  terraform plan

Apply the Terraform deployment:
  terraform apply


Apply complete! Resources: 1 added, 0 changed, 0 destroyed.


To Delete this resource type the following command below.
  terraform destroy
Destroy complete! Resources: 1 destroyed.


Learning Knowledge applied

Throughout the course of this project, we gained valuable insights into utilizing Terraform for building and managing an EC2 instance on AWS. Here are some of the key takeaways:

Terraform Configuration: We learned how to write Terraform configuration files (main.tf, variables.tf, outputs.tf) to define the desired infrastructure and its dependencies.

Infrastructure as Code (IaC): By using Terraform, we experienced the benefits of treating infrastructure as code, which allows for version control, consistency, and easy replication of environments.

AWS Integration: We explored how to integrate Terraform with AWS, including setting up AWS credentials and configuring the necessary resources such as EC2 instances and security groups.

Terraform Workflow: We followed the Terraform workflow, including initializing the configuration (terraform init), planning the deployment (terraform plan), applying the changes (terraform apply), and destroying the infrastructure when no longer needed (terraform destroy).

Troubleshooting and Error Handling: We encountered and resolved various issues, such as remote repository configuration errors and SSL connection problems, which enhanced our problem-solving skills and understanding of Git and network configurations.

Best Practices: We adopted best practices for Terraform projects, such as modularizing the code, using variables for configuration, and maintaining clear documentation with a comprehensive README file.

By completing this project, we have strengthened our understanding of Terraform and its capabilities for managing cloud infrastructure efficiently. These skills and experiences will be valuable for future projects and deployments in cloud environments.
