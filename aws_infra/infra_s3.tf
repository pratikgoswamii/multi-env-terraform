resource "aws_s3_bucket" "s3_resource" {
    bucket = "${var.env}-pratiks-tf-s3"
    tags = {
        Name = "${var.env}-pratiks-tf-s3"
        environment = var.env
    }
}