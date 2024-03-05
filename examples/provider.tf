terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20"
    }
  }
}


provider "aws" {
  region = var.aws_provider_region
}