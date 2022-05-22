resource "azurerm_resource_group" "example" {
  name     = var.resource_group
  location = var.europe
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.standard
  account_replication_type = var.grs

  tags = {
    environment = "var.env"
  }
}

 sku {
    tier = "var.stand"
    size = "var.s1"
  }
}

resource "azurerm_service_plan" "example" {
  name                =  var.service_plan
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = var.os_profile_linux_config
  sku_name            = var.y1
}

resource "azurerm_linux_function_app" "example" {
  name                = var.linux_function_app
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name = azurerm_storage_account.example.name
  service_plan_id      = azurerm_service_plan.example.id


  site_config {}
}

resource "azurerm_function_app" "example" {
  name                       = var.function_app
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
}

