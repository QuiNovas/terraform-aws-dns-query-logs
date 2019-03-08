data "aws_iam_policy_document" "route53_query_logs" {
  statement {
    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = ["arn:aws:logs:*:*:log-group:/aws/route53/${var.domain_name}/*"]

    principals {
      identifiers = ["route53.amazonaws.com"]
      type        = "Service"
    }
  }
}