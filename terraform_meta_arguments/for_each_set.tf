resource "aws_iam_user" "terra__iam_user" {

  for_each = toset(["Naveen", "Saveen", "vedha"])

  name = each.key
  tags = {
    Name = each.value   // Name = "${each.value}" && each.key == each.value
  }

}

/*
*set of starings
* each.key == each.value
*/