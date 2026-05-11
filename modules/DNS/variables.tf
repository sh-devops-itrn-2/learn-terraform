variable "components" {
  default = {
    frontend = ""
    postgresql = ""
    auth-service = ""
    portfolio-service = ""
    analytics-service = ""
  }
}
variable "name" {}
variable "private_ip" {}
