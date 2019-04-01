output "vpc_id" {
    value = "${module.vpc.vpc_info}"
}

output "subnet_private_id" {
    value = "${module.subnet_private.subnet_private_info}"
}


output "subnet_public_id" {
    value = "${module.subnet_pubulic.subnet_public_info}"
}


output "nat_elastic_id" {
    value = "${module.elasticip.elasticip_nat_info}"
}


output "ec2_publicip_id" {
    value = "${module.ec2.ec2_publicip_info}"
}


output "ec2_privateip_id" {
    value = "${module.ec2.ec2_privateip_info}"
}

