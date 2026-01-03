terraform {
  required_version = ">= 1.6.0"
}



variable "env" {
  type = string
  default = "production"
  
  validation {
    condition = contains(["dev", "staging", "prod"], var.env)
    error_message = "The environment must be one of 'dev', 'staging', or 'prod'."
  }
}
