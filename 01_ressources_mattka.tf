# Création de l'instance AWS EC2 t2.micro
resource "aws_instance" "app_server" {
  ami           = "${var.id_ami}"
  instance_type = var.typeinstance
 
  vpc_security_group_ids = ["aws_security_group.allow_tls.id"]
 
  tags = {
    Name = "${var.nominstance}"
  }
}

# Définition du Virtual Private Cloud (VPC) par défaut
resource "aws_vpc" "main" {}

import {
    to = aws_vpc.main
    id = "${var.id_vpc}"
}

# Création du groupe de sécurité
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  # Gestion réseau des flux entrant
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.block_reseau_ipv4]
  }

  # Gestion réseau des flux sortant
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
 
  tags = {
    Name = "allow_tls"
  }
}