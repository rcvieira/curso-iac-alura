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
  region  = "us-west-2"
}

resource "aws_instance" "app_server-curso" {
  ami           = "ami-0b029b1931b347543"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  security_groups = [ "default", "ssh" ]
  tags = {
    Name = "AluraCursoIaC-PrimeiraInstancia"
  }
}