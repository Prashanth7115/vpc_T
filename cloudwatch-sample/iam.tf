# VPC Flow logs IAM Role

data "aws_iam_policy_document" "vpc-flowlog_assume-role" {
  statement {
    effect = "Allow"

    principals {
      type = "Service"
      identifiers = ["vpc-flow-logs.amazonaws.com"]
    }
    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "vpcflowlog-role" {
  name = var.vpc-flowlog-role
  assume_role_policy = data.aws_iam_policy_document.vpc-flowlog_assume-role.json
  
}

data "aws_iam_policy_document" "logs-policy-role" {
  statement {
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "vpc-logs-policy" {
  name = var.vpc-iam-role-policy
  role = aws_iam_role.vpcflowlog-role.id
  policy = data.aws_iam_policy_document.logs-policy-role.json
}