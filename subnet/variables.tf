variable "vpc_id" {
  description = "VPC ID for the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AZ to deploy the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "name" {
  description = "Name tag for the subnet"
  type        = string
  default     = "default-subnet"
}
