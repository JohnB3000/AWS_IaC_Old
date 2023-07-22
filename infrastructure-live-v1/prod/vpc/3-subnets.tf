resource "aws_subnet" "private_eu_west_2a" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.1.1.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "prod_private_eu_west_2a"
  }
}

resource "aws_subnet" "public_eu_west_2a" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.1.2.0/24"
  availability_zone = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "prod_public_eu_west_2a"
  }
}