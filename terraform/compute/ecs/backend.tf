terraform {
  backend "s3" {
    bucket = "three-tier-arch-aws-terraform"
    key    = "compute/ecs/terraform.tfstate"
    region = "us-east-1"
  }
} 