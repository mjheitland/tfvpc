## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_route_table.tfvpc_rtprv](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table) | resource |
| [aws_internet_gateway.tfvpc_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.tfvpc_rtpub](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.tfvpc_rtpubassoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.tfvpc_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.tfvpc_subprv](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.tfvpc_subpub](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.tfvpc_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_ip"></a> [access\_ip](#input\_access\_ip) | cidr block for incoming traffic | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | project name is used as resource tag | `string` | n/a | yes |
| <a name="input_service_ports"></a> [service\_ports](#input\_service\_ports) | ports that we open on our ec2 instance | <pre>list(object({<br>    from_port = number<br>    to_port   = number<br>  }))</pre> | n/a | yes |
| <a name="input_subprv_cidrs"></a> [subprv\_cidrs](#input\_subprv\_cidrs) | cidr blocks for private subnets | `list(string)` | n/a | yes |
| <a name="input_subpub_cidrs"></a> [subpub\_cidrs](#input\_subpub\_cidrs) | cidr blocks for public subnets | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | separate vpc for this project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | ID of the Internet Gateway |
| <a name="output_rtprv_ids"></a> [rtprv\_ids](#output\_rtprv\_ids) | IDs of the private route tables |
| <a name="output_rtpub_ids"></a> [rtpub\_ids](#output\_rtpub\_ids) | IDs of the public route tables |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | ID of the security group attached to the VPC |
| <a name="output_subprv_ids"></a> [subprv\_ids](#output\_subprv\_ids) | IDs of the private subnets |
| <a name="output_subpub_ids"></a> [subpub\_ids](#output\_subpub\_ids) | IDs of the public subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC |
