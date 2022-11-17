resource "aws_iam_user" "iam_user" {
  name = "user18"

  tags = {
    tag-key = "user18"
  }
}
