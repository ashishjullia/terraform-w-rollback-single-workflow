resource "aws_iam_user" "iam_user" {
  name = "user8"

  tags = {
    tag-key = "user8"
  }
}
