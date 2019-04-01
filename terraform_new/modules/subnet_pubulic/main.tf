resource "aws_subnet" "public" {
    vpc_id = "${var.vpc_id}"
    cidr_block = "${var.cidr_block_public}"
    availability_zone = "${var.az_public}"

    tags {
        Name = "PUBLIC_SUBNET"
    }
}

