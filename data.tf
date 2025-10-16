data "aws_ami" "DevopsPrac" {

        most_recent = true
        owners = ["973714476881"]
        tags = {
            Name   = "RHEL-9-DevOps-Practice"
            Tested = "true"
        }

        filter {
           name = "virtualization-type" 
           values = ["hvm"]
        }
        
}

