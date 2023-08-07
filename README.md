# Building AWS Infrastructure Using Infrastructure as Code (IaC)

Welcome back to your Terraform journey.

In the previous tasks, you have learned about the basics of Terraform, its configuration file,
and creating an EC2 instance using Terraform. Today, we will explore more about Terraform and create multiple resources.


##
This project involves creating a Virtual Private Cloud (VPC) along with private and public subnets. Additionally, 
I will set up an Internet Gateway (IGW) to enable communication between the VPC and the internet. To host a website, 
I will launch an EC2 instance in the public subnet with specific configurations. By leveraging the power of automation and Infrastructure as Code, I aim to ensure a consistent and reliable environment for our application.

## Task:
- Create a VPC (Virtual Private Cloud) with CIDR block 10.0.0.0/16
- Create a public subnet with CIDR block 10.0.1.0/24 in the above VPC.
- Create a private subnet with CIDR block 10.0.2.0/24 in the above VPC.
- Create an Internet Gateway (IGW) and attach it to the VPC.
- Create a route table for the public subnet and associate it with the public subnet. This route table should have a route to the Internet Gateway.
- Launch an EC2 instance in the public subnet with the following details:
- AMI: ami-0557a15b87f6559cf
- Instance type: t2.micro
- Security group: Allow SSH access from anywhere
- User data: Use a shell script to install Apache and host a simple website
- Create an Elastic IP and associate it with the EC2 instance.
- Open the website URL in a browser to verify that the website is hosted successfully.
