# Terraform version
# Use this file to define minimum version of Terraform required to run this code.

terraform {
  required_version = ">= 1.13"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }

    # Example:
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "~> 5.0"
    # }
  }
}