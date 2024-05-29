# mml_workspace_builder

## Description

Responsible for building workspaces with a link repository

## Usage

```HCL
module "facility_infra_workspaces" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~> 0.1.0"

  name = "name_of_the_workspace"
  description = "Description of the workspace being created"
  tfe_org           = "name_of_TFE_org"
  vcs_provider_name = "my_vcs_provider_name_here"
  github_org        = "name_of_github_org"
  tags = ["list", "of, "tags"]
}
```

## Dependencies

- [hashicorp/tfe](https://registry.terraform.io/providers/hashicorp/tfe/latest): >=0.52.0
- [integrations/github](https://registry.terraform.io/providers/integrations/github/latest): >=6.0.1
