terraform {
 required_providers {
   genesyscloud = {
     source  = "mypurecloud/genesyscloud"
     version = "~> 1.16.0"
   }
 }
 backend "s3" {}  
}
provider "genesyscloud" {
 oauth_client_id     = var.client_id
 oauth_client_secret = var.client_secret
 oauth_region        = var.region
}
resource "genesyscloud_architect_flow" "sample_flow" {
 filepath = "${path.module}/flows/sample_flow.yaml"
}