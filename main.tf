terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.0"
    }
  }
  backend "s3" {
    region="us-west-2"
    key = "terraform.tfstate"
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test" {
  ami = "ami-830c94e3"
  instance_type = "t2.micro"
  tags = {
    "name" = "test_instance"
  }
}
