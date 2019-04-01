provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

module "vpc" {
    source = "../modules/vpc"

}

module "igw" {
    source = "../modules/igw"
    vpc_id = "${module.vpc.vpc_info}"
}


module "subnet_pubulic" {
    source = "../modules/subnet_pubulic"
    vpc_id = "${module.vpc.vpc_info}"
    az_public = "${var.az_public}"
    cidr_block_public = "${var.public_subnet_cidr}"
}

module "subnet_private" {
    source = "../modules/subnet_private"
    vpc_id = "${module.vpc.vpc_info}"
    az_private = "${var.az_private}"
    cidr_block_private = "${var.private_subnet_cidr}"
}

module "elasticip" {
    source = "../modules/elasticip"
}

module "natgw" {
    source = "../modules/natgw"
    allocation_id = "${module.elasticip.elasticip_nat_info}"
    subnet_id = "${module.subnet_pubulic.subnet_public_info}"
}


module "route" {
    source = "../modules/route"
    vpc_id = "${module.vpc.vpc_info}"
    igw_gateway_id = "${module.igw.igw_info}"
    subnet_public_id = "${module.subnet_pubulic.subnet_public_info}" 
    subnet_private_id = "${module.subnet_private.subnet_private_info}"
    natgw_gateway_id = "${module.natgw.natgw_info}"
}


module "sg" {
    source = "../modules/sg"
    vpc_id = "${module.vpc.vpc_info}"
}

module "keys" {
    source = "../modules/keys"
}

module "ec2" {
    source = "../modules/ec2"
    instance_type = "t2.micro"
    az_public = "${var.az_public}"
    amis = "${var.amis}"
    aws_region = "${var.aws_region}"
    keys_name = "${module.keys.keys_info}"
    sg_public_id = "${module.sg.sg_public_info}"
    subnet_public_id = "${module.subnet_pubulic.subnet_public_info}"
    az_private = "${var.az_private}"
    sg_private_id = "${module.sg.sg_private_info}"
    subnet_private_id = "${module.subnet_private.subnet_private_info}"


}


