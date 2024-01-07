# Provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Création du backend dans un bucket S3
  backend "s3" {
    bucket = "bucketmattka"
    key    = "tfstate/bucketmattka.tfstate"
    region = "eu-west-3"
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "${var.regionchoice}"
  access_key = "${var.myaccesskey}"
  secret_key = "${var.mysecretkey}"
}