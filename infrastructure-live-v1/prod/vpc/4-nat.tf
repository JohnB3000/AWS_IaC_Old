resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "prod-nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.private_eu_west_2a.id

  tags = {
    Name = "prod-nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
