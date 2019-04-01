
output "keys_info" {
  value = "${aws_key_pair.terraform_keys.key_name}"
}

