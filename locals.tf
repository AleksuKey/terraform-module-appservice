locals {
    location_shotname = lower(join("", flatten([regexall("\\b(\\w)", "${var.environment}")])))
    tags              = {
        name        = var.name
        environment = var.environment
        location    = var.location
        terraform   = "Managed"
    }
}