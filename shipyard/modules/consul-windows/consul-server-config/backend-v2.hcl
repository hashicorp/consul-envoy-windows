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