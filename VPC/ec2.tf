resource "aws_instance" "terra_ec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t3.medium"
  availability_zone = "ap-south-1b"
  key_name = "Jump-server"
  subnet_id = aws_subnet.terra_subnet.id
  vpc_security_group_ids = [aws_security_group.terra_security_group.id]
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