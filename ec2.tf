provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVRUVQASYV3HJIGVJ"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
}