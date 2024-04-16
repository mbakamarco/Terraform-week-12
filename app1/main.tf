module "server1" {
  source = "../modules/ec2"
  ami = "ami-0fa1ca9559f1892ec"
  region = "us-east-1"
  instance_type = "t3.small"
  name = "DEV-from module"
}
output "public_ip" {
  value = module.server1.public-ip
}