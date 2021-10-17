resource "digitalocean_kubernetes_cluster" "cluster" {
    name            = var.cluster_name
    auto_upgrade    = var.is_auto_upgrade
    ha              = var.is_ha
    region          = var.cluster_region
    version         = data.digitalocean_kubernetes_versions.kube_version.latest_version
    
    node_pool {
        name        = var.worker_name
        size        = var.worker_size
        node_count  = var.worker_count 
    }
}