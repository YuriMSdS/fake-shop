variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "public_subnet_01_cidr_block" {
  description = "CIDR block for public subnet 01"
  default     = "192.168.0.0/18"
}

variable "public_subnet_02_cidr_block" {
  description = "CIDR block for public subnet 02"
  default     = "192.168.64.0/18"
}

variable "private_subnet_01_cidr_block" {
  description = "CIDR block for private subnet 01"
  default     = "192.168.128.0/18"
}

variable "private_subnet_02_cidr_block" {
  description = "CIDR block for private subnet 02"
  default     = "192.168.192.0/18"
}

variable "project_name" {
  description = "Project name for tagging resources"
  default     = "DesafioDevOps&Cloud"
}
