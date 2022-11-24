resource "aws_vpc" "terraform_vpc"{
    cidr_block = "192.168.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
}

resource "aws_subnet" "terraform_subnet_1" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = "192.168.1.0/24"
    tags = {
      "Name" = "terraform_subnet_1"
    }
    depends_on = [
      aws_vpc.terraform_vpc
    ]
}