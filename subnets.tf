# Create Public Subnet NAT-GW, ALB 
resource "aws_subnet" "sn-public-1a" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "SN-public-1a"
  }
}
resource "aws_subnet" "sn-public-1c" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "SN-public-1c"
  }
}
resource "aws_subnet" "sn-private-1a-web" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "SN-private-1a-WEB"
  }
}
resource "aws_subnet" "sn-private-1c-web" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "SN-private-1c-WEB"
  }
}
resource "aws_subnet" "sn-private-1a-app" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "SN-private-1a-APP"
  }
}
resource "aws_subnet" "sn-private-1c-app" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "SN-private-1c-APP"
  }
}
resource "aws_subnet" "sn-private-1a-db" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.7.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "SN-private-1a-DB"
  }
}
resource "aws_subnet" "sn-private-1c-db" {
  vpc_id            = aws_vpc.vpc-awx.id
  cidr_block        = "10.0.8.0/24"
  availability_zone = "us-west-1c"
  tags = {
    Name = "SN-private-1c-DB"
  }
}