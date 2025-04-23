resource "aws_instance" "instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.sg_id.id ]

    tags = {
      Name = "testing_vars"
    }
}

