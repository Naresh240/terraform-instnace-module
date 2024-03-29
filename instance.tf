resource "aws_instance" "example" {

  count = var.number_of_instances

  ami                    = var.image_id
  instance_type          = var.inst_type
  subnet_id              = data.aws_subnets.example.ids[count.index]
  vpc_security_group_ids = var.sg_id

  tags = local.common_tags
}