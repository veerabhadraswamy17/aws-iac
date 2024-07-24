data "harness_platform_project" "project" {
  name   = "default"
  org_id = "default"
}

# data "harness_platform_apikey" "pipeline01_api_key" {
#   identifier   = data.harness_platform_project.project.identifier
#   name        = ""
#   parent_id   = "parent_id"
#   apikey_type = "USER"
#   account_id  = "account_id"
#   org_id      = data.harness_platform_project.project.org_id
#   project_id  = data.harness_platform_project.project.id
# }

