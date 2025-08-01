variable "aws_region" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "vpc_id" {
  description = "Existing VPC ID to attach resources"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0f5ee92e2d63afc18" # Amazon Linux 2 (Mumbai)
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH Key name for EC2 login"
  default     = "devsecops-projects-key"
}
