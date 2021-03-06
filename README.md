## Requirements

| Name | Version |
|------|---------|
| azurerm | >=2.30.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.30.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| asp\_sku | App Service Plan SKU. | `string` | `"S1"` | no |
| asp\_tier | App Service Plan tier. | `string` | `"Standard"` | no |
| environment | Environment. | `string` | `"tst"` | no |
| location | Location where the resources will be deployed. | `string` | `"West Europe"` | no |
| name | Name that will be used to deploy the resources. | `string` | n/a | yes |
| version | Version of the resources. | `string` | `"001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| appservice\_id | n/a |
| appservice\_name | n/a |
| appserviceplan\_id | n/a |
| appserviceplan\_name | n/a |
| resource\_group\_id | n/a |
| resource\_group\_name | n/a |

