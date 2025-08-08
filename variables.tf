variable "bastion_instance_type" {
  description = "Instance type for bastion host"
  default     = "t2.micro"
}

variable "private_instance_type" {
  description = "Instance type for private host"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name to use for EC2 instances"
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}
