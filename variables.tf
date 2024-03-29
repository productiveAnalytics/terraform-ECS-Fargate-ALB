variable "aws_region" {
  description = "The AWS region to create things in"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key. e.g. Init as ENV variable TF_VAR_aws_access_key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key. e.g. Init as ENV variable TF_VAR_aws_secret_key"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "3"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "adongy/hostname-docker:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

variable "tag_owner" {
  description = "Owner of all resources (Tag)"
  default = "LDC"
}

variable "tag_usage" {
  description = "Usage of resources (Tag)"
  default = "IaaC"
}