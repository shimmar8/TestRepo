variable "client_id" {
 description = "OAuth client ID"
 type        = string
}
variable "client_secret" {
 description = "OAuth client secret"
 type        = string
 sensitive   = true
}
variable "region" {
 description = "Genesys Cloud region"
 type        = string
 default     = "us_east_1"
}
variable "environment" {
 description = "Deployment environment (dev/prod)"
 type        = string
}