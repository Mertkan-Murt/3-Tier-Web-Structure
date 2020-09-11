# Security Group - 3-Tier [DB]
resource "aws_security_group" "sg-awx-private-db" {
  name         = "SG-awx-private-db"
  description  = "3-Tier DB security group"
  vpc_id       = aws_vpc.vpc-awx.id
  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }
  tags = {
    Name = "SG-awx-private-db"
  }
}