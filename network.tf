resource "aws_vpc" "ronzymain" {
  cidr_block           = "${var.vpc-fullcidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "Terraform VPC"
  }
}

