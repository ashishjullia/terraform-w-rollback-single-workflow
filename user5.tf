resource "aws_iam_user" "iam_user" {
  name = "user5"

  tags = {
    tag-key = "user5"
  }
}
