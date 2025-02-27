# KEY-PAIR
resource "aws_key_pair" "key_pair" {
  key_name   = "pratiks-tf-key"
  public_key = file("C:/Users/SFAPPS/.ssh/id_ed25519.pub")
}

# VPC
resource "aws_default_vpc" "default_vpc" {
}

# SECURITY-GROUP
resource "aws_security_group" "security_group" {
  vpc_id = aws_default_vpc.default_vpc.id #interpolation
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2-INSTANCE
resource "aws_instance" "ec2_resource" {
  ami           = var.ubuntu_ami
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key_pair.key_name
  tags = {
    Name = "pratiks-tf-ec2"
  }
}