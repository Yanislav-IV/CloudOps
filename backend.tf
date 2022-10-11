terraform {
  required_version = ">= 1.2.0, < 2.0.0"

  backend "s3" {
    bucket         = "cloudops-terraform-tfstate"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region         = "eu-west-1"
  }
}