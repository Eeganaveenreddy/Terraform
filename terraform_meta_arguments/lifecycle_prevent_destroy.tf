# resource "aws_instance" "myec2" {
#   ami           = "ami-03f4878755434977f"
#   instance_type = "t2.micro"
#   availability_zone = "ap-south-1a"

#   tags = {
#     "Name" = "my-ec2"
#   }

#   lifecycle {
#     prevent_destroy = true  // it wont allow you to destroy this underline resource.
#   }
# }
