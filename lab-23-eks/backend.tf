# Under key, update 'X' with student pod number
terraform {
  backend "s3" {
    bucket         = "onecloud-kube"
    key            = "podx-kube.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
