resource "aws_instance" "Webserver"{
 ami = "ami-09b0a86a2c84101e1"
 instance_type = "t2.micro"
 tags = {
   Name="Made_using_tf"
 }
 root_block_device {
    volume_size = 30 
  }
 security_groups = ["rushi-sg"]
 user_data = file("${path.module}/install_nginx.sh")
 key_name = "test12"
 }