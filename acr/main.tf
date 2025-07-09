resource "aws_ecr_repository" "this" {
  name = local.app_name
}

resource "aws_ecs_cluster" "this" {
  name = local.app_name
}

resource "aws_ecs_task_definition" "this" {
  family                   = "${local.app_name}-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = var.cpu
  memory                   = var.memory
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  task_role_arn            = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([{
    name  = local.app_name
    image = var.image_url
    portMappings = [{
      containerPort = var.container_port
      protocol      = "tcp"
    }]
  }])
}

resource "aws_ecs_service" "this" {
  name            = "${local.app_name}-svc"
  cluster         = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.this.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = var.subnets
    security_groups  = var.security_groups
    assign_public_ip = true
  }

  depends_on = [aws_ecs_task_definition.this]
}
