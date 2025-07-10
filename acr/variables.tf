variable "owner" {
  description = "Owner email of the resources"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "default-vpc"
}

variable "stage" {
  description = "Deployment stage (e.g., dev, staging, prod)"
  type        = string
  default     = "default-vpc"
}

variable "image_url" {
  description = "Docker image URL for the container (e.g., ECR or DockerHub)"
  type        = string
  default     = "ubuntu/nginx"
}

variable "container_port" {
  description = "Port on which the container listens"
  type        = number
  default     = 8080
}

variable "cpu" {
  description = "CPU units for Fargate task (e.g., 256, 512, 1024)"
  type        = number
  default     = 512
}

variable "memory" {
  description = "Memory (in MiB) for Fargate task (e.g., 512, 1024, 2048)"
  type        = number
  default     = 1024
}

variable "subnets" {
  description = "List of subnet IDs for ECS service networking"
  type        = list(string)
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "allowed_cidrs" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "CIDR blocks allowed to access the app"
}
