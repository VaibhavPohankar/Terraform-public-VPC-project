terraform {
  backend "s3" {
    bucket  = "my-terra-tfstate"
    key     = "public-project/terraform.tfstate"
    region  = "ap-south-1"
  }
}
