variable "region" {
  default = "us-east-1"
}
variable "aws_profile" {
  type    = "string"
  default = "default"
}


variable "AmiLinux" {
  type = "map"
  default = {
    us-east-1 = "ami-00068cd7555f543d5"
    us-west-2 = "ami-0c5204531f799e0c6"
    us-east-2 = "ami-0dacb0c129b49f529"
  }
}

variable "aws_access_key" {
  default     = ""
  description = "the user aws access key"
}

variable "aws_secret_key" {
  default     = ""
  description = "the user aws secret key"
}

variable "vpc-fullcidr" {
  default     = "10.0.0.0/16"
  description = "the vpc cidr"
}

variable "Public-Subnet-CIDR" {
  default     = "10.0.0.0/24"
  description = "the public subnet cidr"
}

variable "Private-Subnet-CIDR" {
  default     = "10.0.3.0/24"
  description = "the private subnet cidr"
}

variable "key_name" {
  default     = "terraformkey"
  description = "the ssh key to use to login to ec2 machines"
}

variable "DnsZoneName" {
  default     = "ronzy.internal"
  description = "the internal dns name"
}