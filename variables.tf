variable "name" {
  type        = string
  description = "This is the name of the hosted zone."
}

variable "comment" {
  type        = string
  description = "A comment for the hosted zone."
  default     = "The top level of a subdomain hosted zone."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the zone."
}

variable "hostname" {
  default = "internet.dev.jrbeverly.me"
}

variable "hosted_zones" {
  type        = list(string)
  description = "items"
}

