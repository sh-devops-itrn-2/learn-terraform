resource "aws_route53_record" "dns" {

  zone_id = "Z03351562OJATKDWYEO40"
  name    = "${var.name}-dev"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}
