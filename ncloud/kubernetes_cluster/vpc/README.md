<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ncloud"></a> [ncloud](#provider\_ncloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ncloud_nks_cluster.nks_cluster](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/nks_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_type"></a> [cluster\_type](#input\_cluster\_type) | (Required) Cluster type. Maximum number of nodes<br>  XEN / RHV<br>  10 ea : SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002<br>  50 ea : SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002 | `string` | n/a | yes |
| <a name="input_hypervisor_code"></a> [hypervisor\_code](#input\_hypervisor\_code) | (Optional) Hypervisor code. XEN(Default), RHV | `string` | `"RHV"` | no |
| <a name="input_ip_acl"></a> [ip\_acl](#input\_ip\_acl) | (Optional) IP ACL. Supported on public, gov site | <pre>list(object({<br>    action  = string<br>    address = string<br>    comment = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_ip_acl_default_action"></a> [ip\_acl\_default\_action](#input\_ip\_acl\_default\_action) | (Optional) IP ACL default action. allow, deny | `string` | `null` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | (Optional) Kubenretes version. Only upgrade is supported. | `string` | `null` | no |
| <a name="input_kube_network_plugin"></a> [kube\_network\_plugin](#input\_kube\_network\_plugin) | (Optional) Specifies the network plugin. Only Cilium is supported. | `string` | `"Cilium"` | no |
| <a name="input_lb_private_subnet_no"></a> [lb\_private\_subnet\_no](#input\_lb\_private\_subnet\_no) | (Required) Subnet No. for private loadbalancer only. | `string` | n/a | yes |
| <a name="input_lb_public_subnet_no"></a> [lb\_public\_subnet\_no](#input\_lb\_public\_subnet\_no) | (Optional) Subnet No. for public loadbalancer only. (Required in KR, SG, JP regions in public site) | `string` | `null` | no |
| <a name="input_log"></a> [log](#input\_log) | (Optional) Log configuration. | <pre>object({<br>    audit = bool<br>  })</pre> | `null` | no |
| <a name="input_login_key_name"></a> [login\_key\_name](#input\_login\_key\_name) | (Required) Login key name. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Cluster name. | `string` | n/a | yes |
| <a name="input_oidc"></a> [oidc](#input\_oidc) | (Optional) OIDC configuration.<br>  - issuer\_url - (Required) Issuer URL.<br>  - client\_id - (Required) Client ID.<br>  - username\_prefix - (Optional) Username prefix.<br>  - username\_claim - (Optional) Username claim.<br>  - groups\_prefix - (Optional) Groups prefix.<br>  - groups\_claim - (Optional) Groups claim.<br>  - required\_claim - (Optional) Required claim. | <pre>object({<br>    issuer_url      = string<br>    client_id       = string<br>    username_prefix = optional(string)<br>    username_claim  = optional(string)<br>    groups_prefix   = optional(string)<br>    groups_claim    = optional(string)<br>    required_claim  = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_public_network"></a> [public\_network](#input\_public\_network) | (Optional) Public Subnet Network (boolean) | `bool` | `false` | no |
| <a name="input_subnet_no_list"></a> [subnet\_no\_list](#input\_subnet\_no\_list) | (Required) Subnet No. list. | `list(string)` | n/a | yes |
| <a name="input_vpc_no"></a> [vpc\_no](#input\_vpc\_no) | (Required) VPC No. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | (Required) zone Code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acg_no"></a> [acg\_no](#output\_acg\_no) | The ID of cluster ACG. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | Control Plane API address. |
| <a name="output_id"></a> [id](#output\_id) | Cluster id. |
| <a name="output_uuid"></a> [uuid](#output\_uuid) | Cluster uuid. (It is the same result as id) |
<!-- END_TF_DOCS -->