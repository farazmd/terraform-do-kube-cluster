# see https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster#kube_config.0
output "cluster_endpoint" {
    value = digitalocean_kubernetes_cluster.cluster.kube_config.0.host
}

output "cluster_ca_cert" {
    value = digitalocean_kubernetes_cluster.cluster.kube_config.0.cluster_ca_certificate
}

output "cluster_token" {
    value = digitalocean_kubernetes_cluster.cluster.kube_config.0.token
}