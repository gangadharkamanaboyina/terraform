resource "aws_security_group" "allow-all-ports" {
  name        = "allow-all-ports"
  description = "Allow all inbound and outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all-ports"
  }
}

resource "aws_instance" "terraform" {
  ami                    = data.aws_ami.DevopsPrac.id
  instance_type          = var.env == "prod" ? "t3.large" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all-ports.id]
  count = length(var.instance_name)

  tags = {
    Name       = var.instance_name[count.index]
    Terraform  = "True"
  }
}

