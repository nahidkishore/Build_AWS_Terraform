resource "aws_security_group" "web_server" {
  name_prefix = "web-server-sg"
  vpc_id      = aws_vpc.main.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "server_terraform" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "an-access-key"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [
    aws_security_group.web_server.id
  ]

  user_data = filebase64("userdata.sh")
  tags = {
    Name = "terraform_infra"
  }
}
resource "aws_eip" "ip" {
  instance = aws_instance.server_terraform.id
  vpc      = true
  tags = {
    Name = "elastic-ip"
  }
}
