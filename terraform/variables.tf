variable "aws_region" {
  description = "AWS region where the VPC will be created."
  type        = string
  default     = "ap-northeast-2"
}

variable "project_name" {
  description = "Project name used for resource names and tags."
  type        = string
  default     = "eks-3tier"
}

variable "environment" {
  description = "Environment name used for resource names and tags."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones to use."
  type        = number
  default     = 2

  validation {
    condition     = var.az_count >= 2 && var.az_count <= 4
    error_message = "az_count must be between 2 and 4."
  }
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT Gateway for outbound internet access from private subnets. This creates hourly AWS cost."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags to apply to all resources."
  type        = map(string)
  default     = {}
}
