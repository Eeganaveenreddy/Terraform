resource "aws_instance" "terra_ec2" {
  ami               = var.aws_ami
  instance_type     = var.instance_type
  availability_zone = var.aws_region

  key_name               = "Jump-server"
  vpc_security_group_ids = [aws_security_group.ssh.id, aws_security_group.web.id]

  user_data = <<-EOF
  #! /bin/bash
  sudo apt update -y
  sudo apt install apache2 -y
  sudo service apache2 start
  sudo systemctl enable apache2
  echo "<h1> welcome to terraform <h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name = "terra_ec2"
  }
}