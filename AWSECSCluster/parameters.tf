resource "aws_ssm_parameter" "lb_arn" {
  name  = "/checkmate/ecs/lb/id"
  type  = "String"
  value = aws_lb.main.arn
}

resource "aws_ssm_parameter" "lb_listener" {
  name  = "/checkmate/ecs/lb/listener"
  type  = "String"
  value = aws_lb_listener.http_80.arn
}