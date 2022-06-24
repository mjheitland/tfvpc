module "networking" {
  source = "./networking"

  project_name  = var.project_name
  vpc_cidr      = var.vpc_cidr
  subpub_cidrs  = var.subpub_cidrs
  subprv_cidrs  = var.subprv_cidrs
  access_ip     = var.access_ip
  service_ports = var.service_ports
}
