resource "aws_instance" "sample" {
    ami = "ami-026a2c62c35267e08"
    instance_type = "t2.micro"

    #the vpc subnet "10.0.1.0/24"
    subnet_id = "${aws_subnet.main-public-1.id}"

    #the security group
    vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"]

    #the public SSH key
    key_name = "${aws_key_pair.mykey.key_name}"
    depends_on = [aws_internet_gateway.main-gw] #this will prevent the error when trying to destroy the gateway due to depency

    #expand disk capacity
    # root_block_device {
    #   volume_size = 16
    #   volume_type = "gp2"
    #   delete_on_termination = true #if true the instance is terminated, so is the disk
    # }
    user_data = "${data.template_cloudinit_config.cloudinit-example.rendered}"
}

resource "aws_ebs_volume" "ebs-volume-1"{
    availability_zone = "${var.AWS_ZONE["east1a"]}"
    size = 20
    type = "gp2" #general purpose storage, standard ssd
    tags = {
        Name = "Extra volume data"
    }

}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
    device_name = "${var.INSTANCE_DEVICE_NAME}"
    volume_id = "${aws_ebs_volume.ebs-volume-1.id}"
    instance_id = "${aws_instance.sample.id}"
    stop_instance_before_detaching = true #this will stop the instance first before detaching the additional volume
    
}