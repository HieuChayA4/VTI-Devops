provider "aws" {
  version                  = "~> 5.0"
  region                   = var.region
  shared_credentials_files = ["C:/Users/Hieu/.aws/credentials"]
  skip_region_validation   = true
}

terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}