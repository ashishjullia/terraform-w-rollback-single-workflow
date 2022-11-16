# data "aws_route_tables" "rts" {
#   vpc_id = aws_vpc.openvpn_vpc.id
# }

resource "aws_route" "internet_in" {
  #   count                     = length(data.aws_route_tables.rts.ids)
  #   route_table_id            = tolist(data.aws_route_tables.rts.ids)[count.index]
  route_table_id         = aws_vpc.vpc.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}
