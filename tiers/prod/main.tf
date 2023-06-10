terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "remote" {
    organization = "fer1035"

    workspaces {
      name = "tier-prod"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"

  default_tags {
    tags = {
      Name = "tier-prod"
    }
  }
}
