resource "aws_iam_user" "iam_user" {
  name = "user12"

  tags = {
    tag-key = "user12"
  }
}
