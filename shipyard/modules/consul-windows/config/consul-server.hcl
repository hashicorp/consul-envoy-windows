data_dir = "c:\\temp"
log_level = "DEBUG"
node_name = "server"

datacenter = "dc1"
primary_datacenter = "dc1"

server = true

bootstrap_expect = 1
ui = true

bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"

# When the os has multiple NICs we need to tell
# Consul which to use for local advertise
advertise_addr = "10.15.0.200"
#advertise_addr = "192.168.87.29"

ports {
  grpc = 8502
}

connect {
  enabled = true
}