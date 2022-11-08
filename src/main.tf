locals {
  name = lower("${var.stack_name}-${var.environment}")
  tags = {
    Product = var.project
  }
}

module "vpc" {
  source = "./modules/vpc"
  count  = var.include_vpc_module ? 1 : 0
}