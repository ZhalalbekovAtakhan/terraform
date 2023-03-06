
data "aws_ami" "image-terraform" {
  owners = ["self"]
  filter {
    name   = "name"
    values = ["*terraform*"]
  }
}



# Create a EC2 instance
resource "aws_instance" "atakhans_instance" {
  ami                         = data.aws_ami.image-terraform.id
  instance_type               = var.my_instance_type
  associate_public_ip_address = true

}

