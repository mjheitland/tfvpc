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

* terraform apply -auto-approve
    
* terraform destroy -auto-approve

## To delete Terraform state files
    rm -rfv **/.terraform # remove all recursive subdirectories
    