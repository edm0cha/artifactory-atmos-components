
variable "name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "default-vpc"
}

variable "stage" {
  description = "Stage for the VPC"
  type        = string
  default     = "default-vpc"
}

variable "ecr_name" {}
variable "ecs_cluster_name" {}
variable "app_name" {}
variable "image_url" {}
variable "container_port" { default = 8080 }

variable "cpu" { default = "256" }
variable "memory" { default = "512" }

variable "execution_role_arn" {}
variable "task_role_arn" {}
variable "subnets" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
}
