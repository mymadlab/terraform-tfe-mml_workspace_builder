# mml_workspace_builder

## Description

Responsible for building workspaces with a link repository

## Usage

```HCL
module "facility_infra_workspaces" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~>0.3.0"

  description = "Description of the workspace being created"
  github_org        = "name_of_github_org"
  name = "name_of_the_workspace"
  tags = ["list", "of, "tags"]
  terraform_version = "~>1.7.0"
  tfe_org           = "name_of_TFE_org"
  vcs_provider_name = "my_vcs_provider_name_here"
}
```

## Dependencies

- [hashicorp/tfe](https://registry.terraform.io/providers/hashicorp/tfe/latest): >=0.52.0
- [integrations/github](https://registry.terraform.io/providers/integrations/github/latest): >=6.2.0
