# AZ - us-west-1b
resource "aws_route_table" "rt-awx-private-1a" {
  vpc_id = aws_vpc.vpc-awx.id
  route {
    cidr_block = var.internet-nat-gw
    nat_gateway_id = aws_nat_gateway.natgw-1a-awx.id
  }
  tags = {
    Name = "RT-awx-private-1a"
  }
}
resource "aws_route_table_association" "sn-associate-private-1a-web" {
  subnet_id      = aws_subnet.sn-private-1a-web.id
  route_table_id = aws_route_table.rt-awx-private-1a.id
}
resource "aws_route_table_association" "sn-associate-private-1a-appelb" {
  subnet_id      = aws_subnet.sn-private-1a-app.id
  route_table_id = aws_route_table.rt-awx-private-1a.id
}
resource "aws_route_table_association" "sn-associate-private-1a-app" {
  subnet_id      = aws_subnet.sn-private-1a-app.id
  route_table_id = aws_route_table.rt-awx-private-1a.id
}
resource "aws_route_table_association" "sn-associate-private-1a-db" {
  subnet_id      = aws_subnet.sn-private-1a-db.id
  route_table_id = aws_route_table.rt-awx-private-1a.id
}
resource "aws_route_table" "rt-awx-private-1c" {
  vpc_id = aws_vpc.vpc-awx.id
  route {
    cidr_block = var.internet-nat-gw
    nat_gateway_id = aws_nat_gateway.natgw-1c-awx.id
  }
  tags = {
    Name = "RT-awx-private-1c"
  }
}
# AZ - us-west-1c
resource "aws_route_table_association" "sn-associate-private-1c-web" {
  subnet_id      = aws_subnet.sn-private-1c-web.id
  route_table_id = aws_route_table.rt-awx-private-1c.id
}
resource "aws_route_table_association" "sn-associate-private-1c-appelb" {
  subnet_id      = aws_subnet.sn-private-1c-app.id
  route_table_id = aws_route_table.rt-awx-private-1c.id
}
resource "aws_route_table_association" "sn-associate-private-1c-app" {
  subnet_id      = aws_subnet.sn-private-1c-app.id
  route_table_id = aws_route_table.rt-awx-private-1c.id
}
resource "aws_route_table_association" "sn-associate-private-1c-db" {
  subnet_id      = aws_subnet.sn-private-1c-db.id
  route_table_id = aws_route_table.rt-awx-private-1c.id
}