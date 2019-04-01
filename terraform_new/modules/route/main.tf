resource "aws_route_table" "public" {
    vpc_id = "${var.vpc_id}" 

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${var.igw_gateway_id}"
    }

    tags {
        Name = "ROUTE_IGW"
    }
}

resource "aws_route_table_association" "public" {
    subnet_id = "${var.subnet_public_id}"
    route_table_id = "${aws_route_table.public.id}"
}



resource "aws_route_table" "private" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${var.natgw_gateway_id}"
    }

    tags {
        Name = "ROUTE_NATGW"
    }
}

resource "aws_route_table_association" "private" {
    subnet_id = "${var.subnet_private_id}"
    route_table_id = "${aws_route_table.private.id}"
}



