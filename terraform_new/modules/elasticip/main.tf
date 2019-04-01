resource "aws_eip" "nat" {
    vpc = true

  tags = {
    Name = "EIP NAT"
  }
}
