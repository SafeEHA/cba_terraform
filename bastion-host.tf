resource "aws_instance" "bastion" {
  ami           = "ami-0fa3603ea544e5bf9" 
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public[0].id
  key_name      = var.key_pair

  tags = {
    Name = "Bastion-Host"
  }
}