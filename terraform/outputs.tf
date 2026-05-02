output "vpc_id" {
  description = "Created VPC ID."
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "Created VPC CIDR block."
  value       = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
  description = "Public subnet IDs."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private subnet IDs."
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID."
  value       = aws_internet_gateway.this.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID, if enabled."
  value       = var.enable_nat_gateway ? aws_nat_gateway.this[0].id : null
}
