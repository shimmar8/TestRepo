provider "genesyscloud" {
 oauthclient_id     = var.gc_client_id
 oauthclient_secret = var.gc_client_secret
 region             = var.gc_region
}
resource "genesyscloud_user" "example" {
 name  = "Terraform User"
 email = "terraform.user@example.com"
}