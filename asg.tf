resource "template_file" "user_data" {
  template = "app_install.tpl"
  
  lifecycle {
    create_before_destroy = true
  }
}

data "aws_ami" "ami-56c1fb36" {
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["344003356885"] # Canonical
}

resource "aws_launch_configuration" "as_conf" {
  image_id      = data.aws_ami.ami-56c1fb36.id
  instance_type = "t2.micro"
  user_data = "${template_file.user_data.rendered}"
  key_name  = "cali_key"
  security_groups = [aws_security_group.sg-awx-private-app.id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "bar" {
  name                 = "GoGreen-ASG"
  launch_configuration = aws_launch_configuration.as_conf.name
  vpc_zone_identifier  = [aws_subnet.sn-private-1a-app.id]
  min_size             = 1
  max_size             = 1
}