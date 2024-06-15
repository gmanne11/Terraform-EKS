module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "Terraform-Host"
  instance_type          = "t2.medium"
  monitoring             = true
  ami = var.ami
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.my-sg.id]

  user_data              = base64encode(file("userdata.sh"))
}