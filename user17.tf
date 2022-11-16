resource "aws_iam_user" "iam_user" {
  name = "user17"

  tags = {
    tag-key = "user17"
  }
}
