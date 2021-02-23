exec_local "install" {
  cmd = "powershell.exe"
  args = [ 
    "${file_dir()}\\scripts\\download_binaries.ps1"
  ]

  timeout = "300s"

  working_directory = "${file_dir()}\\binaries"

}