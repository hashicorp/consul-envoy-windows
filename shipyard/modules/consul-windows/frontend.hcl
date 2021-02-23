exec_local "frontend-sidecar" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\envoy.exe"
  args = [ 
    "-c",
    "${file_dir()}\\envoy-config\\frontend-bootstrap.json",
    "--bootstrap-version",
    "2"
  ]

  env_var = {
    Temp = env("Temp")
  }

  daemon = true

  working_directory = "${file_dir()}"
}

exec_local "frontend-service" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\fake-service.exe"
  
  daemon = true

  env_var = {
    LISTEN_ADDR = "0.0.0.0:9090"
    UPSTREAM_URIS = "http://localhost:9091"
  }
} 