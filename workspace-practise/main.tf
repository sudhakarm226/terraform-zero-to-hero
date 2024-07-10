variable "amiID" {
  description = "amiID value"
}

variable "instanceType" {
  description = "instanceType value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.medium"
  }
}

module "ec2_instance" {
  source = "./modules/ec2-instance/"
  ami = var.amiID
  instance_type = lookup(var.instanceType, terraform.workspace, "t2.micro")
}

