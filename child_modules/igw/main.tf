resource "aws_internet_gateway" "vibh_igw" {
  vpc_id = var.vpc_id

  tags = merge(
    { Name = "vibh-igw" },
    var.tags
  )
}
