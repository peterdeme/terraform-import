provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "names" {
  description = "Names of the SSM parameters."
  type        = list(string)
  default     = ["import-1", "import-2"]
}


module "iam_example_user" {
  source   = "./modules"
  for_each = toset(var.names)

  name = each.value
}
