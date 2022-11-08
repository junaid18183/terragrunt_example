terraform {
  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 4.31.0"
  #   }
  #   random = {
  #     source  = "hashicorp/random"
  #     version = "~> 3.4.3"
  #   }
  #   archive = {
  #     source  = "hashicorp/archive"
  #     version = "~> 2.2.0"
  #   }
  #   null = {
  #     source  = "hashicorp/null"
  #     version = "~> 3.1.1"
  #   }
  # }


  required_version = "~> 1.0"
}

# provider "aws" {
#   region = var.aws_region
#   default_tags {
#     tags = {
#       Environment = var.environment
#       Owner       = var.owner
#       Project     = var.project
#       Quoter      = var.quoter
#     }
#   }
# }

