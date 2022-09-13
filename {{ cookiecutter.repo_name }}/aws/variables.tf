#   ----------------------------------------------------------------
#   This file is to set generic variables for the resources
#   It includes the default value and type. It can be overridden 
#   by a tf.vars file
#   ----------------------------------------------------------------

# Set the name of the project
variable "app_name" {
  description = "Project name"
  type        = string
}

# Set a prefix name for the project 
variable "repo_name" {
  description = "The repository name for the project"
  type        = string
}

# Set the default region
variable "aws_region" {
  description = "Region in which aws resources are created"
  type        = string
  default     = "ap-southeast-1"
}

# Author of the infrastructure configuration
variable "app_creator" {
  description = "Author of the config file"
  type        = string
}

# The account to use for infrastructure configuration
variable "aws_profile" {
  description = "The aws account profile to deploy resources"
  type        = string
}

# The name of the s3 bucket
variable "s3_bucket_prefix" {
  description = "The aws account profile to deploy resources"
  type        = string
}
