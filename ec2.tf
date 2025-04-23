resource "aws_instance" "instance" {
    ami = "ami-0e449927258d45bc4"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.sg_id.id]

    tags = {
      Name = "terra_testing"
    }
  
}

resource "aws_security_group" "sg_id" {
    name = "security installing"
    description = "allwoing inbounb and outbound"

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = "terra_testing_sg"
    }
  
}
