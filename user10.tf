resource "aws_iam_user" "iam_user" {
  name = "user10"

  tags = {
    tag-key = "user10"
  }
}
