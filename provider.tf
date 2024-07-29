# Used for providers/version of TF

terraform {
  required_providers {
    azurerm = {
      version = "3.113.0"
      skip_provider_registration = true
      
    }
  }
}