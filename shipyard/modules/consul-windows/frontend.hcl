# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

//
// Generate the Envoy bootstrap configuration.
//
template "frontend-bootstrap" {
  source      = file("${file_dir()}/templates/envoy-bootstrap.json")
  destination = "./envoy-config/frontend-bootstrap.json"

  vars = {
    service_name     = "frontend"
    service_id       = "frontend-1"
    envoy_admin_port = 19001
  }
}

//
// Run the Envoy sidecar proxy with the config we generated above.
//
exec_local "frontend-sidecar" {
  depends_on = ["exec_local.install"]

  cmd = "${file_dir()}/binaries/envoy.exe"
  args = [
    "-c",
    "${file_dir()}/envoy-config/frontend-bootstrap.json"
  ]

  // Keep the application running in the background.
  daemon            = true
  working_directory = "${file_dir()}"

  // Set the OS temp folder env var so Envoy can use it internally.
  env_var = {
    Temp = env("Temp")
  }
}

//
// Run the application.
//
exec_local "frontend-service" {
  depends_on = ["exec_local.install"]

  cmd = "${file_dir()}/binaries/fake-service.exe"

  // Keep the application running in the background.
  daemon = true

  env_var = {
    LISTEN_ADDR   = "0.0.0.0:9090"
    UPSTREAM_URIS = "http://localhost:9091"
    NAME          = "frontend-windows-1"
  }
} 