terraform {
  required_providers {
    octopusdeploy = {
      source  = "OctopusDeployLabs/octopusdeploy"
      version = "~> 0.7.68"
    }
  }

  backend "s3" {
    bucket = "app-builder-"
    key    = "appbuilder-shared-space"
    region = "us-west-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
}