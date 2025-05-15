variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

# Terraform State Bucket
variable "terraform_state_bucket" {
  description = "Name of the S3 bucket for Terraform state"
  type        = string
}
