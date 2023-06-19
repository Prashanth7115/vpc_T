
output "vpcflowlog-iam-role-arn" {
  value = aws_iam_role.vpcflowlog-role.arn
}
output "vpc-cloudwatch-group-arn" {
  value = aws_cloudwatch_log_group.vpc-log-group.arn
}
