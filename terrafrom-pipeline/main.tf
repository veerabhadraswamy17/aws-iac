terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

#Configure the Harness provider for First Gen resources
# provider "harness" {
#   endpoint   = "https://app.harness.io/gateway"
#   account_id = "...."
#   api_key    = "......"
# }

#Configure the Harness provider for Next Gen resources
provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = var.harness_account_id
  platform_api_key = var.harness_platform_api_key
}