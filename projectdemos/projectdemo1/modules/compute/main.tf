resource "aws_instance" "my_second_vm" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = var.instance_type

  tags = {
    Name = "myinstance2"
  }
}