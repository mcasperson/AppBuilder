variable "octopus_server" {
  type = string
}

variable "octopus_apikey" {
  type      = string
  sensitive = true
  nullable = false
}

variable "octopus_space_id" {
  type = string
  nullable = false
}

variable "octopus_github_docker_feed_id" {
  type = string
  nullable = false
}

variable "octopus_dockerhub_feed_id" {
  type = string
  nullable = false
}

variable "octopus_k8s_feed_id" {
  type = string
  nullable = false
}

variable "octopus_application_lifecycle_id" {
  type = string
  nullable = false
}

variable "octopus_infrastructure_lifecycle_id" {
  type = string
  nullable = false
}

variable "octopus_docker_image" {
  type = string
  nullable = false
}

variable "octopus_library_variable_set_id" {
  type = string
  nullable = false
}

variable "aws_region" {
  type = string
  nullable = false
}

variable "octopus_aws_account_id" {
  type = string
  nullable = false
}