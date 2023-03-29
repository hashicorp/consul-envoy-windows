# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

service {
  name = "backend"
  id = "backend-2"
  port = 9991
  
  meta = {
    "version" = "v2"
  }

  connect { 
    sidecar_service {
      proxy {
      }
    }
  }
}