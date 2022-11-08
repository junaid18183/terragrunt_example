locals {
  name = lower("${var.stack_name}-${var.environment}")
  tags = {
    Product = var.project
  }
}
