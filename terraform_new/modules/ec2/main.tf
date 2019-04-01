resource "aws_instance" "web" {
    ami = "${lookup(var.amis, var.aws_region)}"
    availability_zone = "${var.az_public}"
    instance_type = "${var.instance_type}"
    key_name = "${var.keys_name}"
    vpc_security_group_ids = ["${var.sg_public_id}"]
    subnet_id = "${var.subnet_public_id}"
    associate_public_ip_address = true
    source_dest_check = false
    user_data = "${file("./user-data-public.sh")}"

    tags {
        Name = "PUBLIC_EC2"
    }
}

resource "aws_instance" "app" {
    ami = "${lookup(var.amis, var.aws_region)}"
    availability_zone = "${var.az_private}"
    instance_type = "${var.instance_type}"
    key_name = "${var.keys_name}"
    vpc_security_group_ids = ["${var.sg_private_id}"]
    subnet_id = "${var.subnet_private_id}"
    associate_public_ip_address = false
    source_dest_check = false
    user_data = "${file("./user-data-private.sh")}"

    tags {
        Name = "PRIVATE_EC2"
    }
}





