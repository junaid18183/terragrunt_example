output "environment" {
  description = "environment"
  value       = var.environment
}


output "stack_name" {
  description = "stack_name"
  value       = var.stack_name
}

output "aws_region" {
  description = "aws_region"
  value       = var.aws_region
}

output "owner" {
  description = "owner"
  value       = var.owner
}

output "project" {
  description = "project"
  value       = var.project
}

output "quoter" {
  description = "quoter"
  value       = var.quoter
}

output "vpc_module" {
  description = "vpc_module"
  value       = length(module.vpc) > 0 ? module.vpc[0].vpc_module : null
}
