resource "aws_route_table" "rt-awx-public" {
  vpc_id = aws_vpc.vpc-awx.id
  route {
    cidr_block = var.internet-nat-gw
    gateway_id = aws_internet_gateway.igw-awx.id
  }
  tags = {
    Name = "RT-awx-public"
  }
}
resource "aws_route_table_association" "sn-associate-public-1a-webelb" {
  subnet_id      = aws_subnet.sn-public-1a.id
  route_table_id = aws_route_table.rt-awx-public.id
}
resource "aws_route_table_association" "sn-associate-public-1c-webelb" {
  subnet_id      = aws_subnet.sn-public-1c.id
  route_table_id = aws_route_table.rt-awx-public.id
}
resource "aws_route_table_association" "sn-associate-public-1a-natgw" {
  subnet_id      = aws_subnet.sn-public-1a.id
  route_table_id = aws_route_table.rt-awx-public.id
}
resource "aws_route_table_association" "sn-associate-public-1c-natgw" {
  subnet_id      = aws_subnet.sn-public-1c.id
  route_table_id = aws_route_table.rt-awx-public.id
}