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

output "str"{
  value = "$(var.str), steve"
}

output "a" {
  default = "this is normal variable"
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