variable "resource_group" {
  type = string
  default = "name"
  

}
variable "location" {
  type = string
  default = "europe"
  

}
variable "storage_account" {
  type = string
  default = "GRS"
  account_tier = standard
  account_replication_type = grs
  
}
variable "sku" {
  type = string
  default = "stand"

variable "sku" {
  type = string
  default = "s1"
  

}
variable "os_profile_linux_config" {
  type = string
  default = "os_profile_linux_config"
  

}
variable "service_plan" {
  type = string
  default = "azure-functions-test-service-plan"
  os_type = os_profile_linux_config
  sku_name = y1
  
}

variable "linux_function_app" {
  type = string
  default = "example-linux-function-app"

  
variable "function_app" {
  type = string
  default = "test-azure-functions"
  
}
variable "azurerm_service_plan" {
  type = string
  default = "y1"