output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  value = [for s in aws_subnet.this : s.id]
}

output "subnet_cidrs" {
  value = [for s in aws_subnet.this : s.cidr_block]
}
