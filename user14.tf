resource "aws_iam_user" "iam_user" {
  name = "user14"

  tags = {
    tag-key = "user14"
  }
}
