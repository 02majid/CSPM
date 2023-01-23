
provider "sysdig" {
  sysdig_secure_url        = var.sysdig_secure_url
  sysdig_secure_api_token  = var.sysdig_secure_api_token
}

provider "aws" {
  region = var.availability_zone
}

module "sysdig-sfc-agentless" {
  source = "sysdiglabs/secure-for-cloud/aws//modules/services/cloud-bench"
}