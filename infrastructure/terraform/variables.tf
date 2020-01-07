variable "region" {
  default = "us-west-2"
}

provider "aws" {
  region = "${var.region}"
}

variable "domain" {
  default = "11cedar.com"
}

data "aws_caller_identity" "current" {}

terraform {
  backend "s3" {
    bucket               = "vrtlmdn-terraform-state"
    key                  = "11-cedar-com"
    region               = "us-west-2"
  }
}
