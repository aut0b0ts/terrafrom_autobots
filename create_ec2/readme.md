# Terraform AWS EC2 Instance Deployment Guide

## Introduction

This guide will walk you through the process of using Terraform to create an AWS EC2 instance. Terraform is an Infrastructure as Code (IaC) tool that allows you to define and provision your infrastructure using a configuration file.

## Prerequisites

Before you begin, ensure you have the following:
- An AWS account. If you don't have one, you can sign up [here](https://aws.amazon.com/).
- Terraform installed on your local machine. You can download it from [Terraform's website](https://www.terraform.io/downloads.html).

## Configuration File

The configuration file provided creates a simple AWS EC2 instance using Terraform.

### Configuration Breakdown

1. **Terraform Block**

    ```hcl
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "~> 4.16"
        }
      }

      required_version = ">= 1.2.0"
    }
    ```

    - `required_providers`: Specifies the Terraform provider required for this configuration, in this case, the AWS provider.
    - `required_version`: Defines the minimum Terraform version required to apply this configuration.

2. **Provider Block**

    ```hcl
    provider "aws" {
      region  = "us-west-2"
    }
    ```

    - Configures the AWS provider to use the `us-west-2` region.

3. **Resource Block**

    ```hcl
    resource "aws_instance" "app_server" {
      ami           = "ami-830c94e3"
      instance_type = "t2.micro"

      tags = {
        Name = "Terraform_Demo"
      }
    }
    ```

    - Defines an EC2 instance with the specified `ami` ID and `instance_type`.
    - Tags the instance with the name `Terraform_Demo`.

## Steps to Deploy

Follow these steps to deploy the EC2 instance:

1. **Install Terraform**

    Download and install Terraform from the [Terraform website](https://www.terraform.io/downloads.html). Follow the installation instructions for your operating system.

2. **Create a Directory for Your Terraform Project**

    Open a terminal and create a new directory for your Terraform project:

    ```sh
    mkdir my-terraform-project
    cd my-terraform-project
    ```

3. **Create the Terraform Configuration File**

    Inside the directory, create a file named `main.tf` and copy the provided configuration into it:

    ```sh
    touch main.tf
    ```

    Open `main.tf` in your text editor and paste the configuration.

4. **Initialize Terraform**

    Run the following command to initialize your Terraform project. This will download the necessary provider plugins:

    ```sh
    terraform init
    ```

5. **Plan the Deployment**

    Generate an execution plan to review the changes that Terraform will make:

    ```sh
    terraform plan
    ```

6. **Apply the Configuration**

    Apply the configuration to create the EC2 instance:

    ```sh
    terraform apply
    ```

    When prompted, type `yes` to confirm the creation.

7. **Verify the Deployment**

    You can verify the deployment by logging into the AWS Management Console and navigating to the EC2 section. You should see an instance named `Terraform_Demo`.

8. **Destroy the Infrastructure (Optional)**

    If you want to remove the resources created by Terraform, run:

    ```sh
    terraform destroy
    ```

    When prompted, type `yes` to confirm the destruction.

## Additional Resources

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/index.html)
- [HashiCorp AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

## Conclusion

You've successfully created and managed an AWS EC2 instance using Terraform! This guide should help you get started with basic Terraform operations and AWS resource management.



Happy Terraforming!


