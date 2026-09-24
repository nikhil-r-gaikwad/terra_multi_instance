data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-kernel-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  subnet_id                   = var.existing_subnet_id
  vpc_security_group_ids      = [var.existing_security_group_id]
  associate_public_ip_address = var.associate_public_ip
  key_name                    = var.key_name

  tags = {
    Name = "my-first-terraform-instance"
  }
}

data "aws_vpc" "existing_vpc_id" {
  id = var.existing_vpc_id
}


  