output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group create for the dns logs."
  value       = aws_cloudwatch_log_group.query_log.arn
}

output "query_log_id" {
  description = "The query logging configuration ID"
  value       = aws_route53_query_log.query_log.id
}

