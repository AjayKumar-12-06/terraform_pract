resource "aws_security_group" "sg_id" {
    name = "creating fairwall"
    description = "creating inbound and oubound rules"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = var.ingress_from_port
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "testing_sg_vars"
    }
  
}