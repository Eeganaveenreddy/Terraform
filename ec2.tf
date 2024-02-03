provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVRUVQASYVH4MLZ7J"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
}