resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"
  users = [
    aws_iam_user.dbadmin1.name,
    aws_iam_user.dbadmin2.name,
  ]
  group = aws_iam_group.group1.name
}
resource "aws_iam_group" "group1" {
  name = "dbadmin"
}
resource "aws_iam_user" "dbadmin1" {
  name = "dbadmin1"
}

resource "aws_iam_user" "dbadmin2" {
  name = "dbadmin2"
}
provider "aws" {
  region = "us-west-1"
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  groups     = [aws_iam_group.group1.name]
  policy_arn = "arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"
}