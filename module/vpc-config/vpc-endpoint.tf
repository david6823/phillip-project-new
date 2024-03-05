resource "aws_vpc_endpoint" "service" {
  for_each = var.vpc_endpoint_services

  vpc_id              = aws_vpc.main.id
  service_name        = "com.amazonaws.${var.aws_region}.${each.value}"
  private_dns_enabled = false

  tags = {
    Name = "VPC Endpoint for ${each.key}"
  }
}