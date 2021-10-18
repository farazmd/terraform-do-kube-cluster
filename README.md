# Terraform DO kube cluster

IaC for DigitalOcean kube cluster using terraform.

## Prerequisites
- Terraform = 1.0.8
- Digital Ocean API Token


## Usage

- Clone the repository.

### Local state

- Initialise backend configuration
```shell
    terraform init
```
- Terraform plan to view changes to be applied.
```shell
    terraform plan -var="do_token=<digitalOcean token>"
```
- Terraform apply to create the cluster.
```shell
    # pass the --auto-approve flag to skip confirmation
    terraform apply -var="do_token=<digitalOcean token>"
```

### Remote state
- You can use the remote state backend configuration from this [link](https://www.terraform.io/docs/language/settings/backends/configuration.html)

- Initialise backend configuration
```shell
    terraform init
```
- Terraform plan to view changes to be applied.
```shell
    terraform plan -var="do_token=<digitalOcean token>"
```
- Terraform apply to create the cluster.
```shell
    # pass the --auto-approve flag to skip confirmation
    terraform apply -var="do_token=<digitalOcean token>"
```