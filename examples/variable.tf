###### Variables for Provider ######

variable "aws_provider_region" {
  description = "region to deploy terraform code"
  type        = string

}




###### Variables for VPC ######

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC (example 10.0.0.0/16)"
}

variable "enable_dns_support" {
  description = "enable/disable DNS support in the VPC. Defaults to true."
  type        = bool

}

variable "enable_dns_hostnames" {
  description = "enable/disable DNS hostnames in the VPC. Defaults false."
  type        = bool

}

variable "vpc_tags" {
  type    = map(string)
  default = {}

}



###### Variables for VPC-flowlogs ######

variable "cloudwatch_log_group_name" {
  description = "name of the cloudwatch log group name"
  type        = string

}

variable "vpc_flow_log_iam_role" {
  description = "vpc_flow_log_iam_role"
  type        = string

}

variable "vpc_flow_log_iam_policy_name" {
  description = "iam policy name for vpc flowlogs "
  type        = string

}

###### Variables for VPC-endpoint ######


variable "vpc_endpoint_services" {
  description = "Map of AWS service names for VPC endpoints"
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  description = "AWS region where VPC endpoints will be created"
  type        = string
  default     = "us-east-1" // Default value, change it to match your desired region
}

###### Variables for subnet ######

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnets_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnets_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "data_subnets_cidr_blocks" {
  description = "CIDR blocks for data subnets"
  type        = list(string)
}

variable "subnet_tags" {
  description = "Tags for subnets"
  type        = map(map(string))
  default     = {}
}

