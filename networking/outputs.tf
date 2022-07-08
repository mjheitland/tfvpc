output "vpc_id" {
  value = aws_vpc.tfvpc_vpc.id
  description = "ID of the VPC"
}
output "igw_id" {
  value = aws_internet_gateway.tfvpc_igw.id
  description = "ID of the Internet Gateway"
}
output "subpub_ids" {
  value = aws_subnet.tfvpc_subpub.*.id
  description = "IDs of the public subnets"
}
output "subprv_ids" {
  value = aws_subnet.tfvpc_subprv.*.id
  description = "IDs of the private subnets"
}
output "sg_id" {
  value = aws_security_group.tfvpc_sg.id
  description = "ID of the security group attached to the VPC"
}
output "rtpub_ids" {
  value = aws_route_table.tfvpc_rtpub.*.id
  description = "IDs of the public route tables"
}
output "rtprv_ids" {
  value = aws_default_route_table.tfvpc_rtprv.*.id
  description = "IDs of the private route tables"
}
