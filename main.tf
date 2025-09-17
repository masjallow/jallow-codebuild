module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "demo-instance"

  instance_type = "t3.micro"
  key_name      = "user1"
  monitoring    = true
  subnet_id     = "subnet-098e2553978d1db57"

  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}
