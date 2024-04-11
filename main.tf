// k8s clcuster

resource "azurerm_resource_group" "this" {
  name     = "${var.cluster_name}-rg"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }

  lifecycle {
    ignore_changes = [default_node_pool]
  }
}

resource "tls_private_key" "flux" {
  algorithm = "ED25519"
}

resource "github_repository_deploy_key" "this" {
  title      = "Flux"
  repository = var.repository
  key        = tls_private_key.flux.public_key_openssh
  read_only  = "false"
}

resource "flux_bootstrap_git" "this" {
  path = "flux-config"

  depends_on = [azurerm_kubernetes_cluster.this, github_repository_deploy_key.this]
}
