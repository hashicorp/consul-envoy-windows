kind = "service-router"
name = "backend"
routes = [
  {
    match {
      http {
        header = [
          {
            name  = "X-Group"
            exact = "dev"
          },
        ]
      }
    }

    destination {
      service = "backend"
      ServiceSubset = "v2"
    }
  },
]