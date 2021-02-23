service {
  name = "windows-service"
  id = "windows-service"
  port = 9090
  tags = ["v1"]

  connect { 
    sidecar_service {
      proxy {
      }
    }
  }
}