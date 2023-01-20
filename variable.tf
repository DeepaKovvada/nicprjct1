variable "env" {
    type = string
   
  }
  variable "tier" {
    type = string
   
  }
variable "rgname" {
    type = string
    
    }
  variable "location" {
    type = string
   
  }
  variable "tagging" {
    type = map
    }
variable "vnetname" {
    type = string
    
    }
  variable "address_space" {
    type = list(any)
  }
  variable "subnetname" {
    type = string
  
  }
  variable "address_prefixes" {
    type = list(any)
   
  }
  variable "nicname" {
    type = string
   
  }