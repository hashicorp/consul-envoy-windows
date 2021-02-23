exec_local "consul-server" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\consul.exe"
  args = [ 
    "agent",
    "--config-file",
    "${file_dir()}\\config\\consul-server.hcl"
  ]

  daemon = true
}