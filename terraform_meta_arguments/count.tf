resource "aws_instance" "myec2" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  count         = 5

  tags = {
    "Name" = "web-${count.index}"
  }
}
