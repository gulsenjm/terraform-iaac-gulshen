  
resource "aws_instance" "jenkins" {
  ami = "ami-0323c3dd2da7fb37d" 
  instance_type ="t2.large"
  key_name = "${aws_key_pair.jenkins-key.key_name}"
  security_groups = ["${aws_security_group.jenkins.name}"]
  user_data = "${file("user_data.sh")}"  
  tags ="${var.tags}"

  provisioner "remote-exec" {
      connection {
        type        = "ssh"
        user        = "ec2-user"
        private_key = "${file("~/.ssh/id_rsa")}"
        host        = "${self.public_ip}"
      }
      
      
      inline = [
        "echo -e $(tput setaf 1 )'Jenkins Passwd is: '$(tput sgr0) $(tput setaf 2)`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
        "sudo cp -r /tmp/.ssh/  /var/lib/jenkins",
        "sudo cp -r /tmp/config  /var/lib/jenkins/.ssh/",
        "sudo chmod 600 /var/lib/jenkins/.ssh/id_rsa",
        "sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh",
      ]
  }
}
