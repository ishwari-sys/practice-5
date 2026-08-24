terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "terraform-s3-ishwari"
}

# EC2 Instance
resource "aws_instance" "demo" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}
