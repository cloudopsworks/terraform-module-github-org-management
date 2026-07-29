## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |
| <a name="requirement_sodium"></a> [sodium](#requirement\_sodium) | >= 0.0.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.0 |
| <a name="provider_sodium"></a> [sodium](#provider\_sodium) | >= 0.0.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.10 |

## Resources

| Name | Type |
|------|------|
| [github_actions_organization_secret.org](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_actions_organization_variable.org](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_variable) | resource |
| [github_dependabot_organization_secret.org](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/dependabot_organization_secret) | resource |
| [github_actions_organization_public_key.public_key](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/actions_organization_public_key) | data source |
| [sodium_encrypted_item.dependabot](https://registry.terraform.io/providers/killmeplz/sodium/latest/docs/data-sources/encrypted_item) | data source |
| [sodium_encrypted_item.org](https://registry.terraform.io/providers/killmeplz/sodium/latest/docs/data-sources/encrypted_item) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dependabot_secrets"></a> [dependabot\_secrets](#input\_dependabot\_secrets) | List of GitHub Dependabot organization-level secrets to create. Values are encrypted client-side via libsodium. Each entry requires name and value; visibility defaults to 'private'. | `any` | `[]` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the resources | `map(string)` | `{}` | no |
| <a name="input_is_hub"></a> [is\_hub](#input\_is\_hub) | Is this a hub or spoke configuration? | `bool` | `false` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization details | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | List of GitHub Actions organization-level secrets to create. Values are encrypted client-side via libsodium. Each entry requires name and value; visibility defaults to 'private'. | `any` | `[]` | no |
| <a name="input_spoke_def"></a> [spoke\_def](#input\_spoke\_def) | Spoke ID Number, must be a 3 digit number | `string` | `"001"` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | List of GitHub Actions organization-level variables to create. Each entry requires name and value; visibility defaults to 'private'. | `any` | `[]` | no |

## Outputs

No outputs.
