variable "template" {
  type = string
  default = "0.0.0.0/0"
}

resource "aws_security_group_rule" "my-rule1" {
    type = "ingress"
    cidr_blocks = [var.template]
}

resource "aws_security_group_rule" "my-rule2" {
    type = "ingress"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-ingress-sgr
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "foobar"
  acl    = "private"
}
