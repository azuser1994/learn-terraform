variable "x" {
  default = 10
}

output "X" {
  value = var.x
}

variable "str" {
  default = "Hello"
}

variable "num" {
  default = 20
}

variable "mybool" {
  default = true
}

output "str" {
  value = "$(var.str), Steve"
}

output "a" {
  value = "this is normal variable"
}

variable "b" {
  default = [
    1,
    2,
    "abc",
    false
  ]
}

variable "c" {
  default = {
    x = 10
    y = 20
    z = "abc"
  }
}

output "b1" {
  value = var.b[0]
}

output "c1" {
  value = var.c["x"]
}

variable "cli" {

}

output "command-line-variable"{
  value = var.cli
}



## variable from terraform.tfvars
variable "v1" {}
output "v1" {
  value = var.v1
}

variable "env" {}
output "env" {
  value = var.env
}

#auto tfvars
variable "server_count" {}
output "server_count"{
  value = var.server_count
}















