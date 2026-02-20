# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

data_dir = "#{{ .Vars.data_dir | js}}"
log_level = "DEBUG"
node_name = "server"

datacenter = "dc1"
primary_datacenter = "dc1"

server = true

bootstrap_expect = 1
ui = true

bind_addr = "{{ GetPrivateInterfaces | attr \"address\" }}"
client_addr = "0.0.0.0"

ports {
  grpc = 8502
}

connect {
  enabled = true
}