variable "do_token" {}
variable "do_api_endpoint" {
    default     = "https://api.digitalocean.com" 
}
variable "cluster_name" {
    default     = "kube_cluster"
}
variable "is_auto_upgrade" {
    default     = false
}
variable "is_ha" {
    default     = false
}
variable "cluster_region" {
    default     = "nyc1"
}
variable "worker_name" {
    default     = "kube_workers"
}

variable "worker_size" {
    default     = "s-2vcpu-2gb"
}