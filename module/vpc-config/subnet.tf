resource "aws_subnet" "public" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnets_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = merge(var.subnet_tags["public"], { Name = "PublicSubnet-${count.index}" })
}

resource "aws_subnet" "private" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = merge(var.subnet_tags["private"], { Name = "PrivateSubnet-${count.index}" })
}

resource "aws_subnet" "data" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.data_subnets_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = merge(var.subnet_tags["data"], { Name = "DataSubnet-${count.index}" })
}
