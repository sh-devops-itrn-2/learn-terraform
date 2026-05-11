module "ec2" {
  for_each = var.components
  source = "./modules/compute"
  name   = each.key

}


