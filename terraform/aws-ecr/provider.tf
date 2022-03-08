terraform {
  required_providers {
    octopusdeploy = {
      source  = "OctopusDeployLabs/octopusdeploy"
      version = "~> 0.7.68"
    }
    aws = {
      source = "hashicorp/aws"
      version = "4.3.0"
    }
  }

  backend "s3" {
    bucket = "app-builder-0eeb52d7-2df7-4605-b8c7-d22afc9b018a"
    key    = "appbuilder-aws-ecr"
    region = "us-east-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
  space_id = var.octopus_space_id
}

provider "aws" {
  region = var.aws_region
}
