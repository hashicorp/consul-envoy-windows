exec_local "install" {
  cmd = "powershell.exe"
  args = [ 
    "-Command",
    ".\\config\\download_binaries.ps1"
  ]
}