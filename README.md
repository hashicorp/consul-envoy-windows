# Consul Service Connect with Windows applciations 

```shell
shipyard/modules/consul-windows/binaries/consul.exe config write shipyard/consul-config/backend-defaults.hcl
```

```shell
shipyard/modules/consul-windows/binaries/consul.exe config write shipyard/consul-config/backend-resolver.hcl
```

```shell
shipyard/modules/consul-windows/binaries/consul.exe config write shipyard/consul-config/backend-router.hcl
```