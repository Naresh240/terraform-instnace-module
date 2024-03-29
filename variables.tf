variable "image_id" {
  type    = string
}

variable "inst_type" {
  type    = string
}

variable "sg_id" {
  type = list(string)
}

variable "number_of_instances" {
  type = string
}
