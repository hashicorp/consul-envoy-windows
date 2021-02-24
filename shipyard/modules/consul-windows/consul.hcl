template "consul_config" {
  source = file("${file_dir()}\\templates\\consul-server.hcl")
  
  destination = ".\\consul-server-config\\server.hcl"

  vars = {
    data_dir = data("/consul")
  }
}

exec_local "consul_server" {
  depends_on = ["exec_local.install", "template.consul_config"]
  
  cmd = "${file_dir()}\\binaries\\consul.exe"
  args = [ 
    "agent",
    "--config-dir",
    "${file_dir()}\\consul-server-config"
  ]

  daemon = true
}