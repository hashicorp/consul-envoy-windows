data_dir = "/tmp/"
log_level = "DEBUG"
node_name = "windows"

datacenter = "dc1"

server = false

bind_addr = "192.168.87.29"
client_addr = "0.0.0.0"

retry_join = ["127.0.0.1:8301"]

ports = {
  http = 18500
  serf_lan = 18301
  serf_wan = 18302
  server = 18300
}