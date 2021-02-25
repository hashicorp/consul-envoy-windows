# Consul Service Connect with Windows applciations 

```shell
consul config write shipyard/consul-config/backend-defaults.hcl
```

```shell
consul config write shipyard/consul-config/backend-resolver.hcl
```

```shell
consul config write shipyard/consul-config/backend-router.hcl
```

```shell
consul config write shipyard/consul-config/backend-splitter.hcl
```

```shell
consul connect envoy -sidecar-for backend-1 -bootstrap
```