resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.az
  map_public_ip_on_launch = true

  tags = merge(
    { Name = "public-subnet" },
    var.tags
  )
}

resource "aws_route_table" "public_vpc" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = merge(
    { Name = "public-rt" },
    var.tags
  )
}

resource "aws_route_table_association" "Public_vpc_rt" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_vpc.id
}
