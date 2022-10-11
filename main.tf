terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "cloudops_server_public" {
  ami           = "ami-0b24feb030d5e3f22"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name_public
  }
}

resource "aws_instance" "cloudops_server_vpc" {
  ami                    = "ami-0b24feb030d5e3f22"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_vpc.cloudops_vpc.default_security_group_id]
  subnet_id              = aws_subnet.cloudops_subnet.id

  tags = {
    Name = var.instance_name_vpc
  }
}

resource "aws_vpc" "cloudops_vpc" {
  cidr_block = "172.16.0.0/16"
}

resource "aws_subnet" "cloudops_subnet" {
  vpc_id            = aws_vpc.cloudops_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-west-1a"
}