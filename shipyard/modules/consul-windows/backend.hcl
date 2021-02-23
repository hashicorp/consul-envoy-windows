exec_local "backend-sidecar" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\envoy.exe"
  args = [ 
    "-c",
    "${file_dir()}\\envoy-config\\backend-bootstrap.json",
    "--bootstrap-version",
    "2"
  ]

  env_var = {
    Temp = env("Temp")
  }

  daemon = true

  working_directory = "${file_dir()}"
}

exec_local "backend-service" {
  depends_on = ["exec_local.install"]
  
  cmd = "${file_dir()}\\binaries\\fake-service.exe"
  
  daemon = true

  env_var = {
    LISTEN_ADDR = "0.0.0.0:19090"
  }
} 