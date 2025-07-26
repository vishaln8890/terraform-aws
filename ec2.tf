provider "aws" {
  region = "ap-south-1"
  profile = "default"  # Optional: AWS CLI profile name
}

module "ec2_instance" {
  source              = "./modules/ec2"
  ami_id              = "ami-0f918f7e67a3323f0"
  instance_type       = "t2.micro"
  key_name            = "terraform"
  subnet_id           = "subnet-00e51ade1d6e6f58f"
  security_group_ids  = ["sg-06f3fb21361818665"]
  name                = "my-ec2"
  associate_public_ip = true
  tags = {
    Environment = "Dev"
    Project     = "TestModule"
  }
}
