# Flux CD POC

Managing GitOps using Flux

### Docs
- https://fluxcd.io/flux/concepts/
- https://fluxcd.io/flux/installation/
- https://fluxcd.io/flux/installation/bootstrap/github/
- https://fluxcd.io/flux/use-cases/
- https://fluxcd.io/flux/get-started/
- https://fluxcd.io/flux/flux-e2e/

### Happy GitOps

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                        | Version  |
| --------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform)    | >=1.1.5  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm)          | ~>3.25   |
| <a name="requirement_github"></a> [github](#requirement_github)             | >=5.18.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement_kubernetes) | ~>2.8    |
| <a name="requirement_tls"></a> [tls](#requirement_tls)                      | >=4.0.5  |

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | 3.98.0  |
| <a name="provider_flux"></a> [flux](#provider_flux)          | 1.2.3   |
| <a name="provider_github"></a> [github](#provider_github)    | 6.2.1   |
| <a name="provider_tls"></a> [tls](#provider_tls)             | 4.0.5   |

## Modules

No modules.

## Resources

| Name                                                                                                                                         | Type     |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_kubernetes_cluster.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster)        | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)                | resource |
| [flux_bootstrap_git.this](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/resources/bootstrap_git)                           | resource |
| [github_repository_deploy_key.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_deploy_key) | resource |
| [tls_private_key.flux](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key)                              | resource |

## Inputs

| Name                                                                  | Description | Type  | Default | Required |
| --------------------------------------------------------------------- | ----------- | ----- | ------- | :------: |
| <a name="input_cluster_name"></a> [cluster_name](#input_cluster_name) | n/a         | `any` | n/a     |   yes    |
| <a name="input_location"></a> [location](#input_location)             | n/a         | `any` | n/a     |   yes    |
| <a name="input_owner"></a> [owner](#input_owner)                      | n/a         | `any` | n/a     |   yes    |
| <a name="input_repository"></a> [repository](#input_repository)       | n/a         | `any` | n/a     |   yes    |
| <a name="input_token"></a> [token](#input_token)                      | n/a         | `any` | n/a     |   yes    |
| <a name="input_vm_size"></a> [vm_size](#input_vm_size)                | n/a         | `any` | n/a     |   yes    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
