exec_local "consul-server" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\consul.exe"
  args = [ 
    "agent",
    "--config-dir",
    "${file_dir()}\\consul-server-config"
  ]

  daemon = true
}