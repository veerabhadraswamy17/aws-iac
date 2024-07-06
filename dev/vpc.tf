resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet01" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/25"
  
}