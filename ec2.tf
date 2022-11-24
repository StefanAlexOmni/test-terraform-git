resource "aws_instance" "terraform_ec2_1" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.terraform_subnet_1.id
    depends_on = [
      aws_vpc.terraform_vpc,
      aws_subnet.terraform_subnet_1
    ]
}

