resource "aws_security_group" "task3" {
  name        = "task3"

  

  ingress {   #inbound rule SSH
    from_port   = 22 
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
 ingress {   #inbound rule HTTP
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 

  
  egress {    #outbond rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags ="${var.tags}"
}