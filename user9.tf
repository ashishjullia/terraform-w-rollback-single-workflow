resource "aws_iam_user" "iam_user" {
  name = "user9"

  tags = {
    tag-key = "user9"
  }
}
