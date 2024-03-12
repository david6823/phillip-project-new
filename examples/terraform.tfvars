vpc_cidr_block = "10.0.0.0/16"

enable_dns_support = true

enable_dns_hostnames = true

aws_provider_region = "us-east-1"

vpc_tags = {
  Name = "phillip-project"
}


cloudwatch_log_group_name = "phillips-vpc-log"

vpc_flow_log_iam_role = "phillips-vpc-log-role"

vpc_flow_log_iam_policy_name = "phillips-vpc-log-iam-policy"


vpc_endpoint_services = {
  s3       = "s3"
  dynamodb = "dynamodb"
}

aws_region = "us-east-1" // AWS region where VPC endpoints will be created

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]


public_subnets_cidr_blocks = ["10.0.1.0/24", "10.0.3.0/24", "10.0.4.0/24"]

private_subnets_cidr_blocks = ["10.0.6.0/24", "10.0.7.0/24", "10.0.5.0/24"]

data_subnets_cidr_blocks = ["10.0.8.0/24", "10.0.9.0/24", "10.0.10.0/24"]


subnet_tags = {
  "public"  = {}
  "private" = {}
  "data"    = {}
}