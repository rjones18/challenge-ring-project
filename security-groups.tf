resource "aws_security_group" "my_public_app_sg" {
  name        = "my_public_app_sg3"
  description = "Allow access to the server"
  vpc_id      = data.aws_vpc.main_vpc.id


  # INBOUND CONNECTIONS
  ingress {
    description = "allowd ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    #cidr_blocks = ["69.222.131.250/32"]
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}
