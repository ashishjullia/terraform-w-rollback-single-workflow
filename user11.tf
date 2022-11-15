resource "aws_iam_user" "iam_user" {
  name = "user11"

  tags = {
    tag-key = "user11"
  }
}
