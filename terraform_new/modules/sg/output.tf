output "sg_public_info" {
  value = "${aws_security_group.public_machine.id}"
}

output "sg_private_info" {
  value = "${aws_security_group.private_machine.id}"
}
