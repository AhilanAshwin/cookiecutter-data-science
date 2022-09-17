terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.aws_region
  profile = var.aws_profile
}

# These are a set of local values that can be declared together
locals {
  prefix = var.repo_name
  common_tags = {
    creator         = var.app_creator
    app_name        = var.app_name
    repo_name       = var.repo_name
    app_description = "{{ cookiecutter.description }}"
  }
}
