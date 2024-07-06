resource "aws_instance" "ec2-01" {
    ami = ""
    tags = {
      "Name" = "EC2-01"
    }
    subnet_id = aws_subnet.subnet01.id
  
}