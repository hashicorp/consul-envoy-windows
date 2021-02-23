# Download Consul
$source = 'https://github.com/hashicorp/consul-envoy-windows/releases/download/binaries/consul.exe'
$destination = $env:TEMP + 'consul.exe'
Invoke-WebRequest -Uri $source -OutFile $destination

# Download Envoy
$source = 'https://github.com/hashicorp/consul-envoy-windows/releases/download/binaries/envoy.exe'
$destination = $env:TEMP + 'envoy.exe'
Invoke-WebRequest -Uri $source -OutFile $destination

# Download fake-service
$source = 'https://github.com/hashicorp/consul-envoy-windows/releases/download/binaries/fake-service.exe'
$destination = $env:TEMP + 'fake-service.exe'
Invoke-WebRequest -Uri $source -OutFile $destination