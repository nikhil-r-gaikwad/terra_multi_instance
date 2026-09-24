variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_names" {
  description = "List of instance names to create"
  type        = list(string)
  default     = ["web-server-1", "web-server-2", "web-server-3"]
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances (leave blank to query latest Amazon Linux 2023)"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.micro"
}

variable "existing_subnet_id" {
  description = "The ID of the existing Subnet where instances will launch"
  type        = string
}

variable "existing_security_group_id" {
  description = "The ID of the existing Security Group to attach"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 Key Pair name for SSH access (optional)"
  type        = string
  default     = null
}

variable "associate_public_ip" {
  description = "Whether to auto-assign a public IP"
  type        = bool
  default     = true
}

variable "instance_count" {
  type        = number
  default     = 3
  description = "Number of EC2 instances to create"
}

variable "existing_vpc_id" {
  description = "The ID of the existing VPC to attach"
  type        = string
}

variable "instance_prefix" {
  description = "Prefix used for EC2 instance names"
  type        = string
  default     = "app"
}

variable "bucket_name" {
  type = string
}