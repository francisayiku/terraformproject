resource "aws_instance" "phpapp" {
  ami                         = "${var.AmiLinux[var.region]}"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id                   = "aws_subnet.PublicAZA.id"
  vpc_security_group_ids      = "[aws_security_group.FrontEnd.id]"
  key_name                    = "${var.key_name}"
  tags = {
    Name = "phpapp"
  }
  user_data = "${file("phpappuserdata.sh")}"
}

resource "aws_instance" "database" {
  ami                         = "${var.AmiLinux[var.region]}"
  instance_type               = "t2.micro"
  associate_public_ip_address = "false"
  subnet_id                   = "aws_subnet.PrivateAZA.id"
  vpc_security_group_ids      = "[aws_security_group.Database.id]"
  key_name                    = "${var.key_name}"
  tags = {
    Name = "database"
  }
  user_data = "${file("databaseuserdata.sh")}"
}

