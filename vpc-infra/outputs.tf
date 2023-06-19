output "vpc_id" {
  value = module.vpc.vpc_id
}
output "aws_subnet_ids" {
  value = module.vpc.subnet-ids
}
output "vpc-cloudwatch-group-arn" {
  value = module.cloudwatch.vpc-cloudwatch-group-arn
}