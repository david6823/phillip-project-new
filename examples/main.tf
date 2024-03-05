module "vpc" {

  source = "../module/vpc-config"

  vpc_cidr_block = var.vpc_cidr_block

  enable_dns_support = var.enable_dns_support

  enable_dns_hostnames = var.enable_dns_hostnames

  cloudwatch_log_group_name = var.cloudwatch_log_group_name

  vpc_flow_log_iam_role = var.vpc_flow_log_iam_role

  vpc_flow_log_iam_policy_name = var.vpc_flow_log_iam_policy_name

  vpc_endpoint_services = var.vpc_endpoint_services

  aws_region = var.aws_region

  availability_zones = var.availability_zones

  public_subnets_cidr_blocks = var.public_subnets_cidr_blocks

  private_subnets_cidr_blocks = var.private_subnets_cidr_blocks

  data_subnets_cidr_blocks = var.data_subnets_cidr_blocks

  subnet_tags = var.subnet_tags

  vpc_tags = var.vpc_tags

}