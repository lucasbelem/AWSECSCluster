resource "aws_ecs_cluster" "main_cluster_ecs" {
  name = var.project_name

  setting {
    name  = "containerInsights"
    value = "enable"
  }

}