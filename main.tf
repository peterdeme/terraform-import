# resource "aws_ssm_parameter" "testparam" {
#   name  = "peterdeme-test-toimport"
#   type  = "String"
#   value = "text"
# }

# import {
#   id = "arn:aws:ssm:eu-central-1:705096403113:parameter/peterdeme-test-toimport"
#   to = aws_ssm_parameter.testparam
# }

resource "random_pet" "pet1" {
  length = 5
}
