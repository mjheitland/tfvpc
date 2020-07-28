#--- terraform.tfvars ---
project_name = "tfvpc"
vpc_cidr     = "10.0.0.0/16"
subpub_cidrs = [
  "10.0.0.0/24",
  "10.0.2.0/24",
]
subprv_cidrs = [
  "10.0.1.0/24",
  "10.0.3.0/24",
]
service_ports = [
  { # ssh
    from_port = 22,
    to_port   = 22
  },
  { # web http
    from_port = 80,
    to_port   = 80
  },
  { # web https
    from_port = 443,
    to_port   = 443
  },
]
access_ip    = "72.21.198.65/32"
