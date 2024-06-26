module "github_repository_manager" {
  source  = "app.terraform.io/mymadlab/mml_repository_manager/github"
  version = "~>0.2.0"

  repo_name   = var.name
  description = var.description
  visibility  = var.visibility
  wiki        = var.wiki
  repo_type   = "workspace"
  product     = "terraform"

}

module "tfe_workspace_manager" {
  source  = "app.terraform.io/mymadlab/mml_workspace_manager/tfe"
  version = "~>0.2.0"

  workspace_name    = var.name
  tfe_org           = var.tfe_org
  tags              = concat(var.tags, [var.name])
  vcs_provider_name = var.vcs_provider_name
  terraform_version = var.terraform_version
  github_org        = var.github_org

  depends_on = [module.tfe_workspace_manager.module]

}
