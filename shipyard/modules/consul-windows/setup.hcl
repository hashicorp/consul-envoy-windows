# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

//
// Download the required binaries and place them in the binaries folder.
//
exec_local "install" {
  cmd = "powershell.exe"
  args = [
    "${file_dir()}/scripts/download_binaries.ps1"
  ]

  timeout = "300s"

  working_directory = "${file_dir()}/binaries"
}