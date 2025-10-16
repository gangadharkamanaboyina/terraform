variable "instance_type" {
    default = "t3.micro"
}
# variable "ami" {
#     default = "ami-09c813fb71547fc4f"
# }
variable "instance_name" {
    default = ["mongodb","frontend"]
}
variable "env" {
    default = "dev"
}
variable "domain_name" {
    default = "gangu.fun"
}
variable "zone_id" {
    default = "Z09642611L8N3EK9H86BE"
}