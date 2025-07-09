resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name  = "${var.stage}-${var.name}"
    stage = var.stage
  }
}

resource "aws_subnet" "this" {
  count = length(var.subnet_cidrs)

  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidrs[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-subnet-${count.index + 1}"
  }
}
