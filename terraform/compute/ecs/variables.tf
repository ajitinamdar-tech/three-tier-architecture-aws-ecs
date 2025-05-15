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

variable "ecs_cluster_name" {
  description = "The name for the ECS cluster."
  type        = string
  default     = "my-app-cluster" # Example default, adjust as needed
}

variable "frontend_image_uri" {
  description = "The ECR URI for the frontend application image."
  type        = string
  # This will be passed by the GitHub Actions workflow
}

variable "frontend_cpu" {
  description = "The number of CPU units to reserve for the frontend task."
  type        = number
  default     = 256
}

variable "frontend_memory" {
  description = "The amount of memory (in MiB) to reserve for the frontend task."
  type        = number
  default     = 512
}

variable "frontend_container_port" {
  description = "The port the frontend container listens on."
  type        = number
  default     = 3000 # Adjust if your frontend listens on a different port
}

variable "backend_image_uri" {
  description = "The ECR URI for the backend application image."
  type        = string
  # This will be passed by the GitHub Actions workflow
}

variable "backend_cpu" {
  description = "The number of CPU units to reserve for the backend task."
  type        = number
  default     = 256
}

variable "backend_memory" {
  description = "The amount of memory (in MiB) to reserve for the backend task."
  type        = number
  default     = 512
}

variable "backend_container_port" {
  description = "The port the backend container listens on."
  type        = number
  default     = 8080 # Adjust if your backend listens on a different port
}

variable "database_host" {
  description = "The hostname of the database."
  type        = string
  # No default; this should ideally be an output from your database Terraform module
  # and passed here or fetched via terraform_remote_state.
}

variable "database_user" {
  description = "The username for the database."
  type        = string
  # No default.
}

variable "database_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
  # No default.
}

variable "database_name" {
  description = "The name of the database."
  type        = string
  # No default.
}
