variable "name" {
  description = "Name of the SSM parameter."
  type        = string
}

resource "aws_ssm_parameter" "ssm-param" {
  count = var.name != "" ? 1 : 0

  type  = "String"
  name  = var.name
  value = var.name
}
