terraform {
  required_version = ">= 0.13"

  required_providers {
    aws        = ">= 3.13"
    helm       = ">= 1.0"
    kubernetes = ">= 1.10.0"
    utils = {
      source  = "cloudposse/utils"
      version = ">= 0.17.0"
    }
  }
}