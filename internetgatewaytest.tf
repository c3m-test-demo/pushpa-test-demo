resource "aws_internet_gateway" "gw" {
  tags = {
    Name = "main"
  }
}
