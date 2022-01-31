kind = "service-splitter"
name = "backend"
splits = [
  {
    weight = 50
    ServiceSubset = "v1"
  },
  {
    weight = 50
    ServiceSubset = "v2"
  },
]