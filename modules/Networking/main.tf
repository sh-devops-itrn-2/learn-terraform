resource "aws_instance" "instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]

  provisioner "remote-exec" {

    connection {
      type = "ssh"
      host =  self.public_ip
      user = "ec2-user"
      password = "DevOps321"
    }
    inline = [
      "echo Hello remote >/tmp/my_file "
    ]
  }
}
