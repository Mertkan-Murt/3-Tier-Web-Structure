resource "aws_nat_gateway" "natgw-1a-awx" {
  allocation_id = aws_eip.eip-natgw-1a.id
  subnet_id     = aws_subnet.sn-public-1a.id
  tags = {
    Name = "NATGW-1a-awx"
  }
}
resource "aws_nat_gateway" "natgw-1c-awx" {
  allocation_id = aws_eip.eip-natgw-1c.id
  subnet_id     = aws_subnet.sn-public-1c.id
  tags = {
    Name = "NATGW-1c-awx"
  }
}