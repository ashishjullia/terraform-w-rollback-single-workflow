resource "aws_iam_user" "iam_user" {
  name = "user4"

  tags = {
    tag-key = "user4"
  }
}
