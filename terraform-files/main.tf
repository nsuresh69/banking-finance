resource "aws_instance" "production" {
  ami                    = "ami-0da424eb883458071"
  key_name               = "jenkins"
  vpc_security_group_ids = ["sg-056eedfd0afaab649"]  # Directly use the security group ID
  instance_type          = "t2.micro"
  count                  = 1
  tags = {
    Name = "production"
  }
}
