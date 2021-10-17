# see https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions
data "digitalocean_kubernetes_versions" "kube_version" {
  version_prefix = "1.21."
}