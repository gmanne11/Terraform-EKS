module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "Terraform-Host"
  instance_type          = "t2.medium"
  monitoring             = true
  ami = var.ami
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.my-sg.id]

  user_data              = base64encode(file("userdata.sh"))
  iam_instance_profile = aws_iam_instance_profile.instance_profile.name
}

data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "node-role" {
  name               = "node-role"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "ec2_full_access" {
  role = aws_iam_role.node-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess" 
}

resource "aws_iam_role_policy_attachment" "eks_full_access" {
  role = aws_iam_role.node-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_instance_profile" "instance_profile" {
    name = "instance_profile" 
    role = aws_iam_role.node-role.name 
}

