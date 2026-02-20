# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

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