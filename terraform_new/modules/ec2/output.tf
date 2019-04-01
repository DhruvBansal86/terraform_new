output "ec2_publicip_info" {
  value = "${aws_instance.web.public_ip}"
}

output "ec2_privateip_info" {
  value = "${aws_instance.app.private_ip}"
}


