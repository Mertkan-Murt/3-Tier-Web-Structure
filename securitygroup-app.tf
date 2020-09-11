# Serucity Group - 2-Tier [APP]
resource "aws_security_group" "sg-awx-private-app" {
  name         = "SG-awx-private-app"
  description  = "2-Tier APP security group"
  vpc_id       = aws_vpc.vpc-awx.id
  egress {
    description = "Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_outbound-any]
  }
  tags = {
    Name = "SG-awx-private-app"
  }
}
# Security Group Rule - HTTP (TCP 81)
resource "aws_security_group_rule" "sg-awx-private-app-rule-HTTP" {
  description              = "HTTP"
  type                     = "ingress"
  from_port                = 81
  to_port                  = 81
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.sg-awx-private-appelb.id
  security_group_id        = aws_security_group.sg-awx-private-app.id
}
# Security Group Rule - SSH (TCP 22)
resource "aws_security_group_rule" "sg-awx-private-app-rule-SSH" {
  description              = "SSH"
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.sg-awx-private-app.id
}