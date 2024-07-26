terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "my_ec2" {
  source        = "./modules/compute"
  instance_type = "t2.micro"
}

resource "aws_instance" "my_first_vm" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = var.instance_type

  tags = {
    Name = "myinstance"
  }
}