output "harness_account_id" {
    value = data.harness_platform_project.project.id
}

output "harness_platform_project_id" {
    value = harness_platform_project.project-vs.id
  
}