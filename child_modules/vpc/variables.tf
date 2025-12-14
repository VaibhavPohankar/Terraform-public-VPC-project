variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "tags" {
  description = "Common tags passed from parent"
  type        = map(string)
  default     = {}
}
