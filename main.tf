
variable sysdig_secure_url {}
variable sysdig_secure_api_token {}
variable availability_zone {}
variable region {}

provider "sysdig" {
  sysdig_secure_url        = var.sysdig_secure_url
  sysdig_secure_api_token  = var.sysdig_secure_api_token
}

provider "aws" {
  region = var.region
}

module "sysdig-sfc-agentless" {
  source = "sysdiglabs/secure-for-cloud/aws//modules/services/cloud-bench"
}