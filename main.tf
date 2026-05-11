module "ec2" {
  for_each = var.components
  source = "./modules/compute"
  name   = each.key

}

# module "dns" {
# source = "./modules/DNS"
#
#   for_each = var.components
#   name   = each.key
#   private_ip = module.ec2[each.key].private_ip
#
# }


