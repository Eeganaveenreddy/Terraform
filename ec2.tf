provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVRUVQASYSYLZKSNO"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
}

