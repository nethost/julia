group "default" {
  targets = ["latest", "builder"]
}

target "latest" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64/v8"]
  tags = [
    "registry.cn-shanghai.aliyuncs.com/nethost/julia:1.11",
    "docker.io/nethost/julia:1.11",
    "quay.io/nethost/julia:1.11",
    "ghcr.io/nethost/julia:1.11",
  ]
  push = true
}

target "builder" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64/v8"]
  tags = [
    "registry.cn-shanghai.aliyuncs.com/nethost/julia:1.11-builder",
    "docker.io/nethost/julia:1.11-builder",
    "quay.io/nethost/julia:1.11-builder",
    "ghcr.io/nethost/julia:1.11-builder",
  ]
  push = true
}