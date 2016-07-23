resource "aws_iam_account_password_policy" "default" {
  minimum_password_length        = 10
  password_reuse_prevention      = 5
  allow_users_to_change_password = true
}
