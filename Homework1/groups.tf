resource "aws_iam_group" "blackpink" {
  name = "blackpink"
  
}
 
resource "aws_iam_group" "twice" {
  name = "twice"
  
} 
resource "aws_iam_group_membership" "blackpink" {
  name = ["Jenny", "Rose", "Lisa", "Jisoo", "Mina"]

  users = [
    aws_iam_user.blackpink.name,
    aws_iam_user.blackpink.name,
 aws_iam_user.blackpink.name,
    aws_iam_user.blackpink.name, 
    aws_iam_user.blackpink.name,
  ]

  group = aws_iam_group.blackpink
} 

resource "aws_iam_group_membership" "twice" {
  name = "twice"

  users = [
    aws_iam_user.twice.name,
    aws_iam_user.twice.name,
    aws_iam_user.twice.name,
    aws_iam_user.twice.name, 
    aws_iam_user.twice.name,
  ]

  group = aws_iam_group.twice
}