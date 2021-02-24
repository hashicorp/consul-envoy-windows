---
id: index
title: Consul Connect on Windows
sidebar_label: Introduction
---
Systems that consist of multiple services, suffer from intermittent failures due to different conditions such as flaky networks, unavailability due to bugs, deployment of new versions, etc.

Traditionally these failures are countered by embedding reliability and observability at the code level.
A Service Mesh instead decentralizes this and places it at a platform level.

This basically means going from this code in all of your applications:
```
code
```

To this configuration for your services:
```
sidecar
```

This example will guide you through setting up Consul and Envoy on Windows to enable L7 service to service communication.

## Added benefits

By using Consul in combination with Envoy sidecar proxies, we get a number benefits without altering our application code.
- service discovery (xds/upstreams)
- reliability (retries/fallback)
- observability (metrics/tracing)
- security (intentions/mtls)

## Current limitations

All features of the Consul Service Mesh work, but currently the Envoy sidecar proxies have to be manually bootstrapped because the `consul connect envoy` command generates unix filepaths in it's configuration.