# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

//
// Generate the Consul server configuration.
// For demo purposes we are using the Server as Client too.
//
template "consul_config" {
  source = file("${file_dir()}/templates/consul-server.hcl")
  destination = "./consul-server-config/server.hcl"

  vars = {
    data_dir = data("consul")
  }
}

//
// Run the Consul server.
//
exec_local "consul_server" {
  depends_on = ["exec_local.install", "template.consul_config"]
  
  cmd = "${file_dir()}/binaries/consul.exe"
  args = [ 
    "agent",
    "--config-dir",
    "${file_dir()}/consul-server-config"
  ]

  // Keep the server running in the background.
  daemon = true
}