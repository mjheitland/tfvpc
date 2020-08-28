terraform {
  required_version = "~> 0.13"
  required_providers {
    aws = ">= 3.4.0"
  }
  # backend "s3" {
  #   key = "tfvpc.tfstate"
  # }
}

provider "aws" {
  region = var.region
  profile = "default"
}
