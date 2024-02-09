# resource "aws_instance" "myec2" {
#   ami           = "ami-03f4878755434977f"
#   instance_type = "t2.micro"
# #   availability_zone = "ap-south-1a"
#   availability_zone = "ap-south-1b"

#   tags = {
#     "Name" = "my-ec2"
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }
