provider "aws" {
  region = "ap-southeast-1"
}

terraform {
    backend "s3" {
    bucket = "ammo-bomma"
    region     = "ap-southeast-1"
    dynamodb_table  = "tf-state-lock"
  }
}

