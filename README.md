# Create a VPC with Public and Private Subnets Using Terraform

This Terraform project shows how to specify and deploy the following components:
+ VPC
+ 1 internet gateway
+ 2 public subnets  (number can be easily modified changing variables in terraform.tfvars)
+ 2 private subnets (number can be easily modified changing variables in terraform.tfvars)
+ 1 security group
+ 1 public route table (opening the ingress ports listed in terraform.tfvars)
+ 1 private default route table (will automatically be associated with all unattached subnets)

## Terraform commands

* terraform init

* terraform apply -var-file=dev.tfvars -auto-approve

* terraform destroy -var-file=dev.tfvars -auto-approve

## To delete Terraform state files
    rm -rfv **/.terraform # remove all recursive subdirectories

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_networking"></a> [networking](#module\_networking) | ./networking | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_ip"></a> [access\_ip](#input\_access\_ip) | cidr block for incoming traffic | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | project name is used as resource tag | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_service_ports"></a> [service\_ports](#input\_service\_ports) | ports that we open on our ec2 instance | <pre>list(object({<br>    from_port = number<br>    to_port   = number<br>  }))</pre> | n/a | yes |
| <a name="input_subprv_cidrs"></a> [subprv\_cidrs](#input\_subprv\_cidrs) | cidr blocks for private subnets | `list(string)` | n/a | yes |
| <a name="input_subpub_cidrs"></a> [subpub\_cidrs](#input\_subpub\_cidrs) | cidr blocks for public subnets | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | separate vpc for this project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | n/a |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | n/a |
| <a name="output_rtprv_ids"></a> [rtprv\_ids](#output\_rtprv\_ids) | n/a |
| <a name="output_rtpub_ids"></a> [rtpub\_ids](#output\_rtpub\_ids) | n/a |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | n/a |
| <a name="output_subprv_ids"></a> [subprv\_ids](#output\_subprv\_ids) | n/a |
| <a name="output_subpub_ids"></a> [subpub\_ids](#output\_subpub\_ids) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | --- networking |
