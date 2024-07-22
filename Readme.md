# Terraform Configuration Guide

## Introduction

This guide provides instructions for two Terraform setups:

1. **EC2 Instance Creation**: Configuration to create an AWS EC2 instance.
2. **Remote State Setup**: Configuration for managing Terraform state files using an S3 backend with versioning and encryption.

## Prerequisites

Before you begin, ensure you have:
- An AWS account. If you don't have one, sign up [here](https://aws.amazon.com/).
- Terraform installed on your local machine. Download it from [Terraform's website](https://www.terraform.io/downloads.html).

## Project Structure

The project contains two directories:
- `create_ec2`: Configuration for creating an AWS EC2 instance.
- `remote_setup`: Configuration for setting up Terraform's remote state storage using S3.

## `create_ec2` Configuration

### Files

- `main.tf`: Contains the configuration to create an EC2 instance.
- `outputs.tf`: Defines outputs for the EC2 instance.
- `readme.md`: This file.
