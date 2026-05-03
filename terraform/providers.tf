provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "SecureCalcLab"
      Environment = "Lab"
      ManagedBy   = "Terraform"
    }
  }
}