# resource "aws_route53_record" "dns" {
#   for_each  =  var.components
#   zone_id = "Z03351562OJATKDWYEO40"
#   name    = "${each.key}-dev"
#   type    = "A"
#   ttl     = 30
#   records = [aws_instance.instance[each.key].private_ip]
# }
