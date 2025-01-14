# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "onecloud-kube"
    key            = "podx-ec2.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
