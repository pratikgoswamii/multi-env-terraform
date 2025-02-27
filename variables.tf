variable "ubuntu_ami" {
  description = "The AMI ID to use for the EC2 instance"
  default = "ami-00bb6a80f01f03502"
  type = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  default = "dynamodb-table"
  type = string 
}