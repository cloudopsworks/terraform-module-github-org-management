##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

resource "github_actions_organization_secret" "org" {
  for_each        = { for secret in var.secrets : secret.name => secret }
  secret_name     = each.value.name
  visibility      = try(each.value.visibility, "private")
  plaintext_value = each.value.value
}

resource "github_actions_organization_variable" "org" {
  for_each      = { for var in var.variables : var.name => var }
  variable_name = each.value.name
  value         = each.value.value
  visibility    = try(each.value.visibility, "private")
}