# Copyright IBM Corp. 2021, 2023
# SPDX-License-Identifier: MPL-2.0

$id = docker create envoyproxy/envoy-windows-dev:latest
docker cp "$(docker create envoyproxy/envoy-windows-dev:latest):C:\Program Files\envoy\envoy.exe" "envoy.exe"
docker rm $id