resource "aws_route" "terra_route" {
  route_table_id         = aws_route_table.terra_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.terra_igw.id
}