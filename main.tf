terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 5.32.1"
      #configuration_aliases = [aws.southregion]
    }
  }
  required_version = ">= 1.6.6"
}

provider "aws" {
  region = "ap-southeast-1"
}

# provider "aws" {
#   region = "ap-south-1"
#   alias  = "southregion"
# }

module "my-infra" {
  source = "/modules/my-infra"
  # providers = {
  #   aws = aws.southregion
  # }

  # Input Variables
  ami-id                 = "ami-0120e0e7231daa18b"
}