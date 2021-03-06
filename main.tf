resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-rg-${var.environment}-${local.location_shotname}-${var.version}"
  location = var.location
  tags     = local.tags
}

resource "azurerm_app_service_plan" "plan" {
  name                = "${var.name}-plan-${var.environment}-${local.location_shotname}-${var.version}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = var.asp_tier
    size = var.asp_size
  }

  tags                = local.tags
}

resource "azurerm_app_service" "app" {
  name                = "${var.name}-app-${var.environment}-${local.location_shotname}-${var.version}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  https_only          = true

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  tags                = local.tags
}