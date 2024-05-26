terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

#remote state


  backend "s3" {
    bucket = "surisetty-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "surisetty-locking"
  }
}


#provide authentication here
provider "aws" {
  region = "us-east-1"
}
