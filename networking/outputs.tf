#--- networking/outputs.tf ---
output "vpc_id" {
  value = aws_vpc.tfvpc_vpc.id
}
output "igw_id" {
  value = aws_internet_gateway.tfvpc_igw.id
}
output "subpub_ids" {
  value = aws_subnet.tfvpc_subpub.*.id
}
output "subprv_ids" {
  value = aws_subnet.tfvpc_subprv.*.id
}
output "sg_id" {
  value = aws_security_group.tfvpc_sg.id
}
output "rtpub_ids" {
  value = aws_route_table.tfvpc_rtpub.*.id
}
output "rtprv_ids" {
  value = aws_default_route_table.tfvpc_rtprv.*.id
}
