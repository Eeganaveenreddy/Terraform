provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVRUVQASY2A7Q6WNL"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
}