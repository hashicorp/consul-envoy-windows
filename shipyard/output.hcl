output "KUBECONFIG" {
  value = k8s_config("dc1")
}

output "CONSUL_HTTP_ADDR" {
  value = "http://localhost:8500"
}