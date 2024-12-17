variable "os" {
    type = string
    default = "ami-05d38da78ce859165"
    description = "Default AMI"
}

variable "size" {
  default = "t2.medium"
}

variable "key" {
  default = "aws_windows"
}


variable "sec_group" {
  default = ["sg-04e9d31c560633086"]
}

variable "storage" {
  
}