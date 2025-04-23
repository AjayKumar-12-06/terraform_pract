terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        varsion = "5.95.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  
}