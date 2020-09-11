resource "aws_eip" "eip-natgw-1a" {
  vpc = true
  tags = {
    Name = "EIP-NATGW-1a-awx"
  }
}
resource "aws_eip" "eip-natgw-1c" {
  vpc = true
  tags = {
    Name = "EIP-NATGW-1c-awx"
  }
}