vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
az                 = "ap-south-1a"
ami           = "ami-02b8269d5e85954ef"
instance_type = "t3.micro"
key_name      = "key1"
tags = {
  Environment = "dev"
  Project     = "vibh-public-vpc"
}
