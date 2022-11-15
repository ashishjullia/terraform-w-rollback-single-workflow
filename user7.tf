resource "aws_iam_user" "iam_user" {
  name = "user7"

  tags = {
    tag-key = "user7"
  }
}
