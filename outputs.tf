output "tfe_workspaces" {
  description = "Map of the workspace with all it's information"
  value       = module.tfe_workspace_manager
}

output "module_repositories" {
  description = "Map of the github repo with all it's information"
  value       = module.github_repository_manager
}
