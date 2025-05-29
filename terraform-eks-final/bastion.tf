resource "aws_instance" "bastion" {
  ami                    = "ami-0af9569868786b23a"  # Your AMI here
  instance_type          = "t3.micro"
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = var.key_name
  associate_public_ip_address = true  

  tags = {
    Name = "bastion-host"
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  description = "Allow SSH access to bastion host"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "SSH from your IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Your IP with /32
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bastion-sg"
  }
}
