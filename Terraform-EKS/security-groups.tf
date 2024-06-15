resource "aws_security_group" "all_worker_mgmt" {
    name_prefix = "all_worker_management"
    vpc_id = module.vpc.vpc_id
}

resource "aws_security_group_rule" "inbound_rules" {
  description = "allow inbound traffic from eks"
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "tcp"
  cidr_blocks       = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]
  security_group_id = aws_security_group.all_worker_mgmt.id 
}

resource "aws_security_group_rule" "outbound_rules" {
  description = "allow outbound traffic to anywhere"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.all_worker_mgmt.id 
}
