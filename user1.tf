resource "aws_iam_user" "iam_user" {
  name = "user1"

  tags = {
    tag-key = "user1"
  }
}
