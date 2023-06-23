terraform {
  required_version = ">=1.0" 
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.3.0"
      
    }
  }
#   backend "s3" {
#     bucket = module.s3.bucket-name
#     key = "${project}-tfstate"
#     region = var.region
#     dynamodb_table = module.s3.dynamodb-table
#     encrypt = true

    
#   }
}

provider "aws" {
  region = var.region
  # profile = "DEV"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
