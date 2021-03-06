variable "name" {
    type        = string
    description = "Name that will be used to deploy the resources."
}

variable "location" {
    type        = string
    default     = "West Europe"
    description = "Location where the resources will be deployed."
}

variable "version" {
    type        = string
    default     = "001"
    description = "Version of the resources."
}

variable "environment" {
    type        = string
    default     = "tst"
    description = "Environment."
}

variable "asp_tier" {
    type        = string
    default     = "Standard"
    description = "App Service Plan tier."
}

variable "asp_sku" {
    type        = string
    default     = "S1"
    description = "App Service Plan SKU."
}