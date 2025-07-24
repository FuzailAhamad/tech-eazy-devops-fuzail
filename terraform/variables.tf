variable "region" {
  description = "AWS region to launch resources"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "fuzail-key"
}

variable "stage" {
  description = "Environment name (dev or prod)"
  default     = "dev"
}
