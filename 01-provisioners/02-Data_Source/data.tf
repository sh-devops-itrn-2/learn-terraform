data "aws_ami" "ami" {
  owners = ["973714476881"]

  filter {
    name = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }
}

data "aws_security_group" "selected" {

  filter {
    name = "group-name"
    values = ["allow-all"]
  }
}

data "aws_route53_zone" "selected" {
    zone_id = "Z03351562OJATKDWYEO40"
}

output "ami" {
  value = data.aws_ami.ami.image_id
}

output "sg" {
  value = data.aws_security_group.selected.id
}
output "zone" {
  value = data.aws_route53_zone.selected.zone_id
}