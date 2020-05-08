# HOW TO INSTALL JENKINS 
![jenkins logo on linux](https://user-images.githubusercontent.com/63379120/81092043-a79ce400-8ec5-11ea-9e3e-b2b9b80b3c55.jpg)


:black_medium_square: Jenkins is a free and open source automation server.

:black_medium_square: It helps automate the parts of software development related to building, testing, and deploying,
 facilitating continuous integration and continuous delivery.


#### PREREQUISITES:
 
   - **1 VPC**
   - **6 Subnets**
     - 3 Private Subents
     - 3 Public Subnets
   - **Public subnets should have IGW attached to it** 
   - **Private subnets should have NG attached to it**
   - **Configure route tables**
   
  
   
    
  **To check if everything is configured properly, create ec2 instance, manually,  on public subnet and ping
  www.google.com.**
  


<img width="909" alt="ec2 pings google" src="https://user-images.githubusercontent.com/63379120/81093957-7376f280-8ec8-11ea-8f8c-83c056387234.png">

 - If everything is successful, you should have proper response &#8593;  :+1:

**TO INSTALL JENKINS ON EC2 INSTANCE, FOLLOW THE STEPS BELOW :arrow_down:** **OR**
&nbsp;



**Please refer to null_resource.tf for more details**

```HCL
provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }

    inline = [
    ]
```
&nbsp;


 
 **1. Jenkins is a Java application, so the first step is to install Java.**
 
 ```HCL
 "sudo yum install java-1.8.0-openjdk-devel -y",
```

**2. The next step is to enable the Jenkins repository.**
 ```HCL
 "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
```

**3. Add the repository to your system.**
 ```HCL
 "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
```

**4. Once the repository is enabled, install the latest stable version of Jenkins.**
  ```HCL
"sudo yum install jenkins -y",
```

**5. After the installation process is completed, start the Jenkins service.**
  ```HCL
 "sudo systemctl start jenkins",
```

**6. Enable the Jenkins service to start on system boot.**
 ```HCL
"sudo systemctl enable jenkins",
```
**7. This inline command string prints the output for Jenkins Initial Administrator Password.**
 ```HCL
"echo -e $(tput setaf 1 )'Jenkins initialAdminPassword: '$(tput sgr0) $(tput setaf 2)`
sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
```



&nbsp;



# terraform apply -var-file jenkins.tfvars

<img width="1236" alt="Screen Shot 2020-05-04 at 9 09 21 PM" src="https://user-images.githubusercontent.com/63379120/81095609-dff2f100-8eca-11ea-9108-137354b6481f.png">



&nbsp;
# http://your_ip_or_domain:8080


<img width="999" alt="Screen Shot 2020-05-05 at 1 56 26 PM" src="https://user-images.githubusercontent.com/63379120/81105515-ac6b9300-8ed9-11ea-98ef-5b4bf2a8dcf2.png">






&nbsp;


# **To Set Up Jenkins, please follow the prompts**

<img width="1009" alt="Screen Shot 2020-05-05 at 1 57 56 PM" src="https://user-images.githubusercontent.com/63379120/81105404-77f7d700-8ed9-11ea-9fcc-38d1c0366a48.png">

<img width="1009" alt="Screen Shot 2020-05-05 at 1 57 56 PM" src="https://user-images.githubusercontent.com/63379120/81105728-f8b6d300-8ed9-11ea-8d2d-f0d6be454f3b.png">

<img width="999" alt="Screen Shot 2020-05-05 at 1 59 20 PM" src="https://user-images.githubusercontent.com/63379120/81105776-0bc9a300-8eda-11ea-9c6d-2ca23ba984e1.png">

<img width="1007" alt="Screen Shot 2020-05-05 at 2 03 00 PM" src="https://user-images.githubusercontent.com/63379120/81105794-17b56500-8eda-11ea-97ac-8a2d95fb0eb2.png">






&nbsp;

# Jenkins Dashboard

<img width="1040" alt="Screen Shot 2020-05-05 at 2 03 49 PM" src="https://user-images.githubusercontent.com/63379120/81105848-39165100-8eda-11ea-8a5a-9dfa221b3ece.png">

&nbsp;




<img width="685" alt="Screen Shot 2020-05-05 at 3 17 16 PM" src="https://user-images.githubusercontent.com/63379120/81111983-8cd96800-8ee3-11ea-9dc5-b69ce26993f7.png">

