resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group2-membership"
  users = [
    aws_iam_user.sysadmin1.name,
    aws_iam_user.sysadmin2.name,
  ]
  group = aws_iam_group.group2.name
}
resource "aws_iam_group" "group2" {
  name = "sysadmin"
}
resource "aws_iam_user" "sysadmin1" {
  name = "sysadmin1"
}

resource "aws_iam_user" "sysadmin2" {
  name = "sysadmin2"
}
resource "aws_iam_policy_attachment" "test-attach2" {
  name       = "test-attachment2"
  groups     = [aws_iam_group.group2.name]
 policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
}