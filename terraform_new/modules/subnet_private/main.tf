resource "aws_subnet" "private" {
    vpc_id = "${var.vpc_id}"
    cidr_block = "${var.cidr_block_private}"
    availability_zone = "${var.az_private}"

    tags {
        Name = "PRIVATE_SUBNET"
    }
}

