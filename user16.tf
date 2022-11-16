resource "aws_iam_user" "iam_user" {
  name = "user16"

  tags = {
    tag-key = "user16"
  }
}
