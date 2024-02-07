resource "aws_s3_bucket" "terra_s3" {

  for_each = {
    dev = "terra-bucket"
    sit = "terra-bucket"
    uat = "terra-bucket"
    prod = "terra-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    Name        = "${each.key}-${each.value}"
    Environment = "${each.key}"
  }
}