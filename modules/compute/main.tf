resource "aws_instance" "instance" {

  ami      = data.aws_ami.ami.image_id                                     #"ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  tags = {
    Name = var.name
  }
}



