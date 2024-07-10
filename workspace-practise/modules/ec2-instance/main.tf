provider "aws" {
  region = "us-east-2"
}

variable "amiID" {
  description = "amiID value"
}

variable "instanceType" {
  description = "instanceType value"
}

#ami-0862be96e41dcbf74