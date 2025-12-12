provider "aws" {
  region = "eu-north-1"
}


resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = "subnet-0b9bece7757b1bc7d"
  associate_public_ip_address = true
  vpc_security_group_ids  = [var.security_group_id]
  key_name      = "fresh-key"

  tags = {
    Name = "jenkins-controller"
  }
}

