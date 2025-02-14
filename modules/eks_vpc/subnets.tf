resource "aws_subnet" "eks_public_subnets" {
  count = length(var.public_subnets)

  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = element(var.public_subnets, count.index)
  map_public_ip_on_launch = true
  availability_zone       = element(var.public_azs, count.index)

  tags = {
    Name = "${var.environment}-public-subnets-${element(var.public_azs, count.index)}"
  }
}

resource "aws_subnet" "eks_private_subnets" {
  count = length(var.private_subnets)

  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = element(var.private_subnets, count.index)
  availability_zone = element(var.private_azs, count.index)

  tags = {
    Name = "${var.environment}-private-subnets-${element(var.private_azs, count.index)}"
  }
}

