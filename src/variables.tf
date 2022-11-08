variable "stack_name" {
  description = "The name of the stack"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "aws_region" {
  description = "AWS region for all resources."
  type        = string
}

variable "owner" {
  description = "Owner Tag"
  type        = string
}

variable "project" {
  description = "Project Tag"
  type        = string
}

variable "quoter" {
  description = "Quoter"
  type        = string
}