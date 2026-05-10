resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

}

resource "aws_route53_record" "record" {
  name    = "record"
  type    = "A"
  zone_id = data.aws_route53_zone.selected.id
}
