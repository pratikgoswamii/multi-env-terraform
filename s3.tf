resource "aws_s3_bucket" "s3_resource" {
    bucket = "pratiks-tf-s3"
    tags = {
        Name = "pratiks-tf-s3"
    }
}