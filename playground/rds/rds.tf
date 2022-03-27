resource "aws_db_subnet_group" "arwindb-subnet" {
    name = "arwindb-subnet"
    description = "RDS Subnet Group"
    subnet_ids = ["${aws_subnet.main-private-1.id}","${aws_subnet.main-private-2.id}"]
}

resource "aws_db_parameter_group" "arwindb-parameters" {
    name = "arwindb-parameters"
    family = "mariadb10.6"
    description = "MariaDB paramter group"
    parameter {
      name = "max_allowed_packet"
      value = "16777216"
    }
  
}

resource "aws_db_instance" "arwindb" {
    allocated_storage = 100 #100gb of storage give us more IOPS then a lower number
    engine = "mariadb"
    engine_version = "10.6.7"
    instance_class = "db.t2.micro"
    identifier = "mariadb"
    db_name = "mariadb"
    username = "${var.RDS_USERNAME}"
    password = "${var.RDS_PASSWORD}"
    db_subnet_group_name = "arwindb-subnet" #associate the IP that will be used for this DB Instance
    parameter_group_name = "arwindb-parameters" #associate the parameters that will be used for this DB Instance 
    multi_az = "true" #if set to true, it will have high availablility, 2 instances sync with each other
    vpc_security_group_ids = ["${aws_security_group.allow-mariadb.id}"] #security group resource to allow mariadb ports
    storage_type = "gp2"
    backup_retention_period = 30 #how long you're going to keep your backups
    # availability_zone = "${aws_subnet.main-private-1.availability_zone}" #prefered availablity zone
    depends_on = [aws_db_parameter_group.arwindb-parameters, aws_db_subnet_group.arwindb-subnet]
    skip_final_snapshot = true
    apply_immediately = true
    tags = {
      Name = "Mariadb-instance"
    }
  
}
