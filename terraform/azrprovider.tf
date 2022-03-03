terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=2.46.1"
        }
    }
}

#Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
}

terraform {
    backend "azurerm" {
        ressource_group_name = "rg-gc-azr-tf"
        storage_account_name = "gencloudazuretf2022"
        container_name       = "terraform-state"
        key                  = "terraform.tfstate" 

    }
}



