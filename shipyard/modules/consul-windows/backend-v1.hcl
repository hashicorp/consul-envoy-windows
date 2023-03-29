# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

//
// Generate the Envoy bootstrap configuration.
//
template "backend-v1-bootstrap" {
  source      = file("${file_dir()}/templates/envoy-bootstrap.json")
  destination = "./envoy-config/backend-v1-bootstrap.json"

  vars = {
    service_name     = "backend"
    service_id       = "backend-1"
    envoy_admin_port = 19002
  }
}

//
// Run the Envoy sidecar proxy with the config we generated above.
//
exec_local "backend-1-sidecar" {
  depends_on = ["exec_local.install"]

  cmd = "${file_dir()}/binaries/envoy.exe"
  args = [
    "-c",
    "${file_dir()}/envoy-config/backend-v1-bootstrap.json",
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
exec_local "backend-1-service" {
  depends_on = ["exec_local.install"]

  cmd = "${file_dir()}/binaries/fake-service.exe"

  // Keep the application running in the background.
  daemon = true

  // Configure the application.
  env_var = {
    LISTEN_ADDR = "0.0.0.0:9990"
    MESSAGE     = "hello from v1"
    NAME        = "backend-windows-1"
  }
} 