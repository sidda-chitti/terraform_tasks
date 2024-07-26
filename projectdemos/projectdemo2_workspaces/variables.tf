variable "instance_type" {
  description = "instance type for aws resources"
  type        = string
  default     = "t2.micro"

}

variable "access_key" {
  description = "access key for aws resources"
  type        = string

}

variable "secret_key" {
  description = "secret key for aws resources"
  type        = string

}