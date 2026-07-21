resource "azurerm_log_analytics_workspace" "this" {

  name                = var.workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku               = "PerGB2018"
  retention_in_days = 30

  tags = {
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }


}

resource "azurerm_monitor_data_collection_rule" "this" {

  name                = "dcr-landingzone"
  location            = var.location
  resource_group_name = var.resource_group_name

  destinations {
    log_analytics {
      workspace_resource_id = azurerm_log_analytics_workspace.this.id
      name                  = "loganalytics"
    }
  }

  data_flow {
    streams      = ["Microsoft-Perf"]
    destinations = ["loganalytics"]
  }

  data_sources {
    performance_counter {
      name                          = "perfCounters"
      streams                       = ["Microsoft-Perf"]
      sampling_frequency_in_seconds = 60

      counter_specifiers = [
        "\\Processor(_Total)\\% Processor Time",
        "\\Memory\\Available MBytes"
      ]
    }
  }

  tags = {
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_virtual_machine_extension" "azure_monitor_agent" {

  name               = "AzureMonitorLinuxAgent"
  virtual_machine_id = var.vm_id

  publisher            = "Microsoft.Azure.Monitor"
  type                 = "AzureMonitorLinuxAgent"
  type_handler_version = "1.0"

  auto_upgrade_minor_version = true
  automatic_upgrade_enabled  = true

  settings = jsonencode({})
}