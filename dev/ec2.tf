resource "aws_instance" "ec2-01" {
    ami = "ami-0604d81f2fd264c7b"
    instance_type = "t2.micro"
    tags = {
      "Name" = "EC2-01"
    }
    subnet_id = aws_subnet.subnet01.id
  
}