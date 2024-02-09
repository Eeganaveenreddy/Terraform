terraform {
  required_version = "~> 1.6"

  required_providers {
    aws = { ## here 'aw' is local name, it should match with provider local name
      version = ">= 5"
      source  = "hashicorp/aws"
    }
  }
}