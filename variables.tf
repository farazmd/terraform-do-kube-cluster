variable "do_token" {}
variable "do_api_endpoint" {
    description = "DigitalOcean API endpoint"
    default     = "https://api.digitalocean.com" 
}
variable "cluster_name" {
    description = "Name of the cluster"
    default     = "kube_cluster"
}
variable "is_auto_upgrade" {
    description = "Is auto upgrade of cluster required ?"
    default     = false
}
variable "is_ha" {
    description = "Is highly available control plane required ?"
    default     = false
}
variable "cluster_region" {
    description = "Region to deploy the cluster in."
    default     = "nyc1"
}
variable "worker_name" {
    description = "Name of the worker node group"
    default     = "kube_workers"
}

variable "worker_size" {
    description = "Worker instance size"
    default     = "s-2vcpu-2gb"
}

variable "worker_count" {
    description = "Number of workers"
    default     = 1 
}

variable "min_nodes" {
    description = "Minimum nodes for scalable workers"
    default     = 1
}

variable "max_nodes" {
    description = "Maximum nodes for scalable workers"
    default = 3
}
variable "is_auto_scale" {
    description = "Are scalable workers required ?"
    default = false
}