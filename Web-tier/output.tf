output "web-tier-security_group" {
    value = aws_security_group.web-http-ssh-sg.id
}

output "project-target-group" {
    value = aws_lb_target_group.web-project-tg.id
}