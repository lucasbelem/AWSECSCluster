resource "aws_ecs_cluster" "main_cluster_ecs" {
  name = var.project_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_cluster_capacity_providers" "main" {
  cluster_name = aws_ecs_cluster.main_cluster_ecs.name

  capacity_providers = [
    aws_ecs_capacity_provider.on_demand.name,
    aws_ecs_capacity_provider.spots.name

  ]

  default_capacity_provider_strategy {
    base              = 0
    weight            = 100
    capacity_provider = aws_ecs_capacity_provider.on_demand.name
  }
}