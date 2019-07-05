variable "domain_name" {
  description = "Domain name of the hosted zone to create query logs for. Must be a public hosted zone in Route53."
  type        = string
}

variable "log_retention_duration" {
  description = "Cloudwatch Log retention in days, defaults to 7"
  default     = 7
  type        = number
}

