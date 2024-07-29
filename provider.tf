# Used for providers/version of TF

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.113.0"
      features{}
      skip_provider_registration = true
      
    }
  }
}