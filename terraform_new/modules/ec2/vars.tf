variable "az_public" {
  description = "az"
}

variable "instance_type" {
  description = "instance type"
    
}

variable "keys_name" {
  description = " keys name"
}

variable "sg_public_id" {
  description = " sg public id"
}

variable "sg_private_id" {
  description = " sg private id"
}

variable "subnet_public_id" {
  description = "subnet public id"
}

variable "az_private" {
  description = "az"
}


variable "subnet_private_id" {
  description = "subnet private id"
}



variable "aws_region" {
  description = "region aws"
}

variable "amis" {
   type = "map"
  description = "ami id"
}


