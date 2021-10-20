# see https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster
resource "digitalocean_kubernetes_cluster" "cluster" {
    name            = var.cluster_name
    auto_upgrade    = var.is_auto_upgrade
    ha              = var.is_ha
    region          = var.cluster_region
    version         = data.digitalocean_kubernetes_versions.kube_version.latest_version
    
}
# see https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_node_pool
resource "digitalocean_kubernetes_node_pool" "static_worker_nodes" {
    count           = var.is_auto_scale ? 0 : 1 
    cluster_id      = digitalocean_kubernetes_cluster.cluster.id
    auto_scale      = var.is_auto_scale
    name            = var.worker_name
    size            = var.worker_size
    node_count      = var.worker_count
}

resource "digitalocean_kubernetes_node_pool" "scalable_worker_nodes" {
    count           = var.is_auto_scale ? 1 : 0 
    cluster_id      = digitalocean_kubernetes_cluster.cluster.id
    auto_scale      = var.is_auto_scale
    name            = var.worker_name
    size            = var.worker_size
    node_count      = var.worker_count
    min_nodes       = var.min_nodes
    maxmax_nodes    = var.max_nodes 
}