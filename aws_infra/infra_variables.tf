variable "env" {
    description = "The environment for the infrastructure"
    type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "instance_count" {
    description = "The number of EC2 instances to create"
    type        = number
}
