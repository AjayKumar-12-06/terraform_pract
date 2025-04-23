variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "ami_id" {
    type = string
    default = "ami-0e449927258d45bc4"
  
}

variable "ingress_from_port" {
    
    default = 22
  
}