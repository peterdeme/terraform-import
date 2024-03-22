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

# variable "names" {
#   description = "Names of the SSM parameters."
#   type = map(object({
#     name = string
#   }))
#   default = {
#     import-1 = "import-1"
#     import-2 = "import-2"
#   }
# }


module "parameters" {
  source = "./modules"
  for_each = {
    import-1 = "import-1"
    import-2 = "import-2"
  }

  name = each.value
}

# Import command:
# terraform import 'module.parameters["import-1"].aws_ssm_parameter.ssm-param' arn:aws:ssm:eu-central-1:705096403113:parameter/import-1
