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
