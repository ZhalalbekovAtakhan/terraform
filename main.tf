provider "aws" {
  region = "us-east-1"
}

# Create a EC2 instance
resource "aws_instance" "atakhans_instance" {
  ami           = "ami-0b0bea9a76f8bc635"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
    name = "a-new-name"
    owner = "atakhan"
  }
}