resource "aws_iam_user" "iam_user" {
  name = "user15"

  tags = {
    tag-key = "user15"
  }
}
