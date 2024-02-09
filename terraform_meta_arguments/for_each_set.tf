resource "aws_iam_user" "terra__iam_user" {

  for_each = toset(["Naveen","Saveen","vedha"])

  name = each.key
}

/*
*set of starings
* each.key == each.value
*/