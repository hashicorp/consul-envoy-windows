# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

kind = "service-resolver"
name = "backend"
DefaultSubset = "v1"
Subsets = {
  "v1" = {
    Filter = "Service.Meta.version == v1"
  }
  "v2" = {
    Filter = "Service.Meta.version == v2"
  }
}