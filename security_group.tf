resource "aws_security_group" "sg_ecs" {
  name   = format("%s-ecs", var.project_name)
  vpc_id = data.aws_ssm_parameter.vpc.value


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "subnet_range" {
  from_port         = 0
  protocol          = "-1" #The parameter -1 means all
  security_group_id = aws_security_group.sg_ecs.id
  to_port           = 0
  type              = "ingress"
  cidr_blocks       = ["10.0.0.0/16"]
  description       = "Allow traffic to VPC"
}