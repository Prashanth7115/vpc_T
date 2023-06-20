module "vpc" {
  source = "./terraform-modules-vpc"

  vpc_cidr = var.vpc_cidr
  tags = var.tags
  public_subnet_cidr = var.public_subnet_cidr
  azs = var.azs
  public_subnet_names = var.public_subnet_names
  public_route_table_name = local.public_route_table_name
  
  # private subnets
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_names = var.private_subnet_names 
  private_route_table_name = local.private_route_table_name
  project = var.project
  vpc-flowlog-role = var.vpc-flowlog-role
  vpc-cloudwatch-group = var.vpc-cloudwatch-group
  depends_on = [ module.cloudwatch ]
}

module "cloudwatch" {
  source = "./cloudwatch-sample"

  vpc-cloudwatch-group = var.vpc-cloudwatch-group
  vpc-flowlog-role = var.vpc-flowlog-role
  vpc-iam-role-policy = var.vpc-iam-role-policy
  
}
