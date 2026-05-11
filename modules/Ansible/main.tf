# resource "null_resource" "ansible" {
#
#   depends_on = [aws_route53_record.dns]
#
#   for_each = var.components
#   provisioner "remote-exec" {
#
#     connection {
#       type     = "ssh"
#       host     = aws_instance.instance[each.key].public_ip
#       user     = "ec2-user"
#       password = "DevOps321"
#     }
#     inline = [
#       "sudo labauto ansible",
#       "ansible-pull -i localhost, -U https://github.com/sh-devops-itrn-2/wmp-ansible-v4.git main.yml -e env=dev -e COMPONENT=${each.key}"
#     ]
#   }
# }
#
#
