provider "aws" {
  region = "eu-west-2"
  profile = "jkbk"
}

terraform {
  required_version = ">= 1.0"

  backend "local" {
    path = "prod/vpc/terraform.tfstate"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.26"
    }
  }
}
