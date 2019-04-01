variable "aws_access_key" {
    description = " aws accss key"
    default = ""
}
variable "aws_secret_key" {
    description = "secrest"
    default = ""
}


variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-west-1"
}


variable "public_subnet_cidr" {
    description = "EC2 Region for the VPC"
    default = "10.0.1.0/24"
}


variable "az_public" {
    description = "EC2 Region for the VPC"
    default = "us-west-1b"
}


variable "private_subnet_cidr" {
    description = "EC2 Region for the VPC"
    default = "10.0.2.0/24"
}

variable "az_private" {
    description = "EC2 Region for the VPC"
    default = "us-west-1b"
}


variable "amis" {
    description = "AMIs by region"
    default = {
        us-west-1 = "ami-06397100adf427136" # ubuntu 14.04 LTS
    }
}
