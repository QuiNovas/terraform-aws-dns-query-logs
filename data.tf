data "aws_region" "current" {
}

data "aws_caller_identity" "current" {
}

data "aws_route53_zone" "main" {
  name = var.domain_name
}

data "aws_iam_policy_document" "route53_query_logs" {
  statement {
    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
    principals {
      identifiers = [
        "route53.amazonaws.com",
      ]
      type = "Service"
    }
    resources = [
      aws_cloudwatch_log_group.query_log.arn,
    ]
  }
}

