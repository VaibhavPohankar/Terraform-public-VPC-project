module "vpc" {
    source = "../../child_modules/vpc"
    cidr_block =var.vpc_cidr
    tags =var.tags
}
module "igw" {
    source = "../../child_modules/igw"
    vpc_id = module.vpc.vpc_id
    tags =var.tags
}
module "public_subnet" {
    source = "../../child_modules/public_subnet"
    vpc_id =module.vpc.vpc_id
    igw_id =module.igw.igw_id
    subnet_cidr =var.public_subnet_cidr
    tags = var.tags
    az = var.az
}
module "ec2" {
  source        = "../../child_modules/Ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.public_subnet.public_subnet_id
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = var.tags
}
