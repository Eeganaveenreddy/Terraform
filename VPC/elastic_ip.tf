resource "aws_eip" "lb" {
  instance = aws_instance.terra_ec2.id
  #vpc = "true"
  depends_on = [aws_internet_gateway.terra_igw]
}