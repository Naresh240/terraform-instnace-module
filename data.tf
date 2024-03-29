data "aws_vpc" "example" {
  filter {
    name   = "tag:Name"
    values = ["example"]
  }
}

data "aws_subnets" "example" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.example.id]
  }
}
