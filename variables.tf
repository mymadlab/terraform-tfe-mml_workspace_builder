variable "description" {
  description = "Description of the module"
  type        = string
  nullable    = false
}

variable "github_org" {
  description = "The terraform cloud token"
  type        = string
  nullable    = false
  sensitive   = true
}

variable "name" {
  description = "Name of the module"
  type        = string
  nullable    = false
}

variable "tags" {
  description = "List of tags"
  type        = list(string)
  nullable    = false
}

variable "terraform_version" {
  description = "Version of terraform to be run by the workspace"
  default = "~>1.7.0"
  type = string
}

variable "tfe_org" {
  description = "Name of the organization in terraform clould"
  type        = string
  nullable    = false
}

variable "vcs_provider_name" {
  description = "Name of the OATH VCS Provider"
  type        = string
  nullable    = false
}

variable "visibility" {
  description = "Github repository visibility setting"
  type        = string
  default     = "public"
}

variable "wiki" {
  description = "Turns the Github wiki on and off"
  type        = bool
  default     = false
}