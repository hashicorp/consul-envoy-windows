# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

service {
  name = "backend"
  id = "backend-1"
  port = 9990
  
  meta = {
    "version" = "v1"
  }

  connect { 
    sidecar_service {
      proxy {
      }
    }
  }
}