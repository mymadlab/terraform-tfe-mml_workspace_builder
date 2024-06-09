module "github_repository_manager" {
  source  = "app.terraform.io/mymadlab/mml_repository_manager/github"
  version = "~>0.1.0"

  repo_name   = var.name
  description = var.description
  visibility  = var.visibility
  wiki        = var.wiki
  repo_type   = "workspace"
  product     = "terraform"

  depends_on = [ module.tfe_workspace_manager.module ]
}

module "tfe_workspace_manager" {
  #source  = "app.terraform.io/mymadlab/mml_workspace_manager/tfe"
  #version = "~>0.1.0"
  source  = "../mml_workspace_manager/"

  workspace_name    = var.name
  tfe_org           = var.tfe_org
  tags              = concat(var.tags, [var.name])
  vcs_provider_name = var.vcs_provider_name
  github_org        = var.github_org

}
