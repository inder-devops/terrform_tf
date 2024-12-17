resource "aws_instance" "JENKINS" {
  ami = var.os
  key_name = var.key
  vpc_security_group_ids = var.sec_group
  instance_type = var.size
  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.storage
    delete_on_termination = true
  }
  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "BUILD" {
  ami = var.os
  key_name = var.key
  vpc_security_group_ids = var.sec_group
  instance_type = var.size
  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.storage
    delete_on_termination = true
  }
  tags = {
    Name = "Build"
  }
}

resource "aws_instance" "SONAR" {
  ami = var.os
  key_name = var.key
  vpc_security_group_ids = var.sec_group
  instance_type = var.size
  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.storage
    delete_on_termination = true
  }
  tags = {
    Name = "Sonar"
  }
}

resource "aws_instance" "K8s" {
  ami = var.os
  key_name = var.key
  vpc_security_group_ids = var.sec_group
  instance_type = var.size
  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.storage
    delete_on_termination = true
  }
  tags = {
    Name = "K8S"
  }
}

resource "aws_instance" "Grafana_Prometheus" {
  ami = var.os
  key_name = var.key
  vpc_security_group_ids = var.sec_group
  instance_type = var.size
  root_block_device {
    volume_type           = "gp3"
    volume_size           = var.storage
    delete_on_termination = true
  }
  tags = {
    Name = "Graf_Prom"
  }
}