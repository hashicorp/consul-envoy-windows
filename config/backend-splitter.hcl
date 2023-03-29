# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

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