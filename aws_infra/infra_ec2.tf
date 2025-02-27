# EC2-INSTANCE
resource "aws_instance" "ec2_resource" {
  ami           = var.ami_id
  instance_type = var.ec2_instance_type
  count         = var.instance_count
  tags = {
    Name = "${var.env}-tf-ec2"
  }
}