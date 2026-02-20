# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

service {
  name = "frontend"
  id = "frontend-1"
  port = 9090

  connect { 
    sidecar_service {
      proxy {
        upstreams {
          destination_name = "backend"
          local_bind_address = "127.0.0.1"
          local_bind_port = 9091
        }
      }
    }
  }
}