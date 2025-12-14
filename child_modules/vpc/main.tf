resource "aws_vpc" "module_vpc" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = merge(
        {
            Name ="vibh_vpc"
        },var.tags
    )
}
