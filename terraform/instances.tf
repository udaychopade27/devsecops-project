resource "aws_instance" "server1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  tags = {
    Name = "Jenkins-Monitoring-Node"
  }
}

resource "aws_instance" "server2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = "App-Deployment-Node"
  }
}
