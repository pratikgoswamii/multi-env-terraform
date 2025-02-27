module "dev" {
    source = "./aws_infra"
    env = "dev"
    ami_id = "ami-00bb6a80f01f03502"
    ec2_instance_type = "t2.micro"
    instance_count = 1
}

module "stage" {
    source = "./aws_infra"
    env = "stage"
    ami_id = "ami-00bb6a80f01f03502"
    ec2_instance_type = "t2.micro"
    instance_count = 1
}

module "prod" {
    source = "./aws_infra"
    env = "prod"
    ami_id = "ami-00bb6a80f01f03502"
    ec2_instance_type = "t2.micro"
    instance_count = 1
}