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

#default workspace resources
resource "aws_instance" "my_first_vm" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = var.instance_type

  tags = {
    Name = "mynewinstance"
  }
}

#dev workspace resources
resource "aws_instance" "dev_instance" {
  count         = terraform.workspace == "dev" ? 1 : 0
  ami           = "ami-01b799c439fd5516a"
  instance_type = var.instance_type

  tags = {
    Name = "devinstance"
  }
}

#QA workspace resources
resource "aws_instance" "qa_instance" {
  count         = terraform.workspace == "qa" ? 1 : 0
  ami           = "ami-01b799c439fd5516a"
  instance_type = var.instance_type

  tags = {
    Name = "mynewinstance"
  }
}

