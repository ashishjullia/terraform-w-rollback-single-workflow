resource "aws_iam_user" "iam_user" {
  name = "user"

  depends_on = [
    aws_instance.instance1
  ]
}
