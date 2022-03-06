locals {
  tags = {
    Project     = "Test"
    Environment = "Dev"
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset( ["One", "Two", "3"] )

  name                   = "Web-Server-${each.key}"
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids_instance_1_name
  subnet_id              = var.subnet_id_instance_1_name
  root_block_device = [
    {
      encrypted   = true
      volume_type = "gp2"
      volume_size = var.ec2_volume_size
    }
  ]

  tags = local.tags
}