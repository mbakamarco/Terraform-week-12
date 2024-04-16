
resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-key"
  monitoring                  = false
  private_ip                  = "172.31.47.103"
  security_groups             = ["launch-wizard-1"]
  subnet_id                   = "subnet-0a633dd34aac80f94"
  tags = {
    Name = "imported_server"
    env  = "dev"
  }

}
