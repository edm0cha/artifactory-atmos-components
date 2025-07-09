variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

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

variable "subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "AZs to use for subnets"
  default     = ["us-east-1a", "us-east-1b"]
}
