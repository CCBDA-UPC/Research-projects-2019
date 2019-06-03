# Cloud automation: Terraform #

The cloud market has been steadily growing in recent years as a result of the proliferation of native cloud applications and services. The annual growth reached 32% in 2018 being IaaS and PaaS the areas with the highest growth (as high as 50%) [[1](https://www.cloudcomputing-news.net/news/2019/jan/08/global-cloud-market-hit-250bn-2018-slower-growth-natural-boom-will-continue/)]. 
A study conducted by capgemini concluded that 15% of all new applications were being built in a cloud environment back in 2017 and that this figure will only keep rising in upcoming years. The shift to the cloud is taking the industry by storm in an attempt to improve the agility and scalability of IT products as well as to improve the customer experience and expand into new markets [[2](https://www.capgemini.com/service/cloud-native/)].
With this shift in trends, moving from mobile applications and services hosted in site to the cloud, has come a myriad of new challenges that range from security concerns to vendor lock-in. It is no secret that in the field of cloud computing it is common to experience vendor lock-in, the lack of standardization inhibits the portability of applications between vendors and the integration of services offered by different cloud providers. Even when embracing the vendor lock-in and subscribing to one sole vendor for all required services it is becoming increasingly hard to maintain systems and infrastructure in the cloud given their rising complexity. It is not only hard to maintain systems but also to maintain company expenses since most cloud providers work on a subscription basis and billing depends on the resources used.
Several of the challenges that cloud computing faces can be mitigated by the use of cloud automation and orchestration tools. The following sections of this documents go into the concepts of cloud automation and orchestration in more depth. 


## Cloud automation ## 

The term "cloud automation" refers to a spectrum of tools and solutions that seek to reduce the required manual labor to control, install and maintain services in the cloud. The main goal of cloud automation is to simplify and optimize the efficiency of managing cloud systems. Thanks to cloud automation 75 percent of IT executives report an increase in revenue and profitability, as well as improvement in agility and user experience [[3](https://www.prnewswire.com/news-releases/cloud-automation-boosts-revenue-and-profitability-for-three-quarters-of-fast-mover-firms-300642385.html)].
The fact is that cloud automation brings many benefits:

* **Fast development**

Thanks to cloud automation companies are able to innovate and push their updates quickly and easily because the automation tool takes care of any complexities in the deployment of applications and services. Being able to deliver new code at any time is essential to improve the quality of services offered to the user.

* **Control improvement**

Through automation tools it is possible to define business processes and policies and to modify them easily as customer needs change. They also assist in billing control by implementing alert systems and automatically reducing services to avoid paying more than expected.

* **Cloud service integration and provider migration**

As explained in the previous section cloud providers are prone to vendor lock-in which complicates the integration of services provided by different vendors as well as the migration process from one provider to another. Automation platforms take care of all integration needed for the services in a transparent manner for the user. Since they allow the automation of configuration of infrastructure they facilitate the migration between providers allowing to easily deploy the infrastructure using the same configuration in the new vendor.


* **Improve productivity**

The ability to automate and simplify complete procedures allows the IT personnel of a company to dedicate their time to more profitable activities by taking management tasks that can be tedious and time consuming off their workloads.

* **Security**

Having to manually provision and configure servers increases the risk of introducing inconsistencies and misconfigurations through human error which are one of the most common causes of security incidents.
Automation can reduce human error and allows easier isolation, applying the principle of least privilege reducing the potential threat that an agent has malicious intent [[4](https://increment.com/security/how-automation-improves-security/)].

* **Use of best practices**

Given that automation is easier to achieve when resources are organized the automation process "forces" the developers to clean their cloud processes, create pre-built deployment templates, baked-in security and structured IP addressing [[5](https://www.networkcomputing.com/cloud-infrastructure/cloud-orchestration-8-benefits)].


## Cloud orchestration ## 

While cloud automation refers to the automation of single independent tasks cloud orchestration deals with interconnected tasks: "Orchestration is the automated configuration, coordination, and management of computer systems and software" [[6](https://en.wikipedia.org/wiki/Orchestration_(computing))], this means that the orchestration process takes automated tasks and manages and coordinates them to execute a larger workflow. The main goal of orchestration is to streamline and optimize frequent processes, this brings with it a series of [benefits](https://www.bmc.com/blogs/it-orchestration-vs-automation-whats-the-difference/): decrease in IT costs, increasing productivity, fast development, use of best practices... because cloud automation and cloud orchestration are very tightly related many of the benefits that they bring to a company are similar. However, a good cloud orchestration by centralizing all automation processes makes it easier to change and expand those automated services, this means that cloud orchestration enhances the advantages of using cloud automation. 

## Comparison of automation tools ##

![alt text](https://github.com/wookawb/CloudComputing/blob/master/Research-topic/images/terraform.png) 
![alt text](https://github.com/wookawb/CloudComputing/blob/master/Research-topic/images/puppet.png) 
![alt text](https://github.com/wookawb/CloudComputing/blob/master/Research-topic/images/Ansible.png) 

In this section we will present a comparison of the more popular automation and orchestration platforms available in the market right now; Terraform, Puppet, Ansible.
We will start by acquainting ourselves with what these platforms are and what their goals are. In the words of their creators:  

* **Terraform**
_"Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions."_[[7](https://www.terraform.io/intro/index.html)]

* **Puppet**
_"Puppet gives you an automatic way to inspect, deliver, operate and future-proof all of your infrastructure and deliver all of your applications faster"_[[8](https://puppet.com/products/how-puppet-works)]

* **Ansible**
_"Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs."_[[9](https://www.ansible.com/overview/how-ansible-works)]

At first glance all three platforms seem rather similar but if we take a closer look to the functionalities that each of them provide, we can see they are in fact quite different and not all of them might satisfy a particular company's needs. Even though these three platforms serve similar purposes, both Puppet and Ansible are actually Configuration Management (CM) tools and Terraform is considered to be an orchestrator. A CM tool is used to install and manage software over existing servers, they automate the processes that the instances need to perform. On the other hand, an orchestrator is designed to provision the instances, the configuration of servers is left to other tools.
The table below, obtained from [IBM Cloud Blog](https://www.ibm.com/blogs/bluemix/2018/11/chef-ansible-puppet-terraform/), compares some of the main characteristics of Ansible, Puppet and Terraform.

 |   | Puppet | Ansible | Terraform |
 |---|--------|---------|---------- |
 | Type | Config Mgmt | Config Mgmt | Orchestration |
 | Infrastructure | Mutable | Mutable | Immutable |
 | Language | Declarative | Procedural | Declarative |
 | Architecture | Client/Server | Client Only | Client Only |
 | Lifecycle management | No | No | Yes |
 | VM provisioning | Partial | Partial | Yes |
 | Networking | Partial | Partial | Yes |
 | Storage Management | Partial | Partial | Yes |
 | Packaging | Yes | Yes | Partial (Using CloudInit) |
 | Templating | Yes | Yes | Partial (Using CloudInit) |
 | Service provisioning | Yes | Yes | Yes |

As you can observe in the table of comparison Puppet and Ansi share more similarities between them than with Terraform. 
The infrastructure feature in the table shows whether it is possible to edit a server once it has been installed, Configuration Management tools are ready to deal with the complexity that this task entails but Terraform as an orchestrator presents an immutable infrastructure. Terraform instead of allowing the servers to be modified creates new ones in the case that something needs to change.
Ansible employs a Procedural language, this means that code written specifying how to achieve the desired status needs to be written, while both Terraform and Puppet use Declarative languages where it is only necessary to specify the final state but not the procedure of how that status should be obtained. This means that for both Puppet and Terraform the platform can seek the optimal process to achieve the desired state.

All three of these platforms have strengths and weaknesses. Terraform can build pretty much every cloud feature, it is fast, simple and assist you in your updates by giving feedback about all the changes that will happen after deploying. However, managing Terraform’s state file is very challenging, it is relatively simple to end up with unwanted resource change, it also does not allow rollbacks and the methods they employ to provision servers are less efficient than those used by other platforms.
Ansible with its procedural language appeals to those with scripting experience, it allows templating configurations through Jinja2 and is great to configure container hosts. On the down side Ansi doesn't have an agent checking to look for changes as well as fix any configuration issues, it can be harder to use for software developers with no previous scripting experience and the configuration of resources is more limited than that of Terraform.
Puppet is slightly similar to Ansible but it can appeal more to developers due to the use of descriptive language, module testing is robust and simple to use and its client/server architecture keeps track of drift. However, it is complex, particularity when getting started with it, it's provision of infrastructure is less complete and more difficult than that of Terraform and because puppet modules can be executed in any order it requires identifying all dependencies between them explicitly, making it a more complex task. 

For this project we have chosen to focus on Terraform to give a more detailed view of this tool, but it is important to consider that these tools don't necessarily need to be competitors, since it is possible to combine them and exploit all of their strengths. In fact, representatives from both Ansible and Terraform have partnered in the past to explain how these two platforms can be integrated to better satisfy your company's needs. More information on this can be found [here](https://www.hashicorp.com/resources/ansible-terraform-better-together).


## Terraform: About

Terraform is a cloud infrastructure orchestrator. It is open-source and works with a whole bunch of platforms, including: AWS, AZURE, Google Cloud Platform, OpenStack, Digital Ocean, AliCloud, Docker, and Kubernetes. This makes it very versatile and easier to use if you are dealing with multiple clouds and/or cloud platforms. Some of Terraform's key features are [[10](https://blog.powerupcloud.com/terraform-new-way-of-infra-orchestration-part-i-d48e8a0c3039)]: 
* Having your infrastructure as code. This basically means that the infrastructure of your cloud is described in syntax, making is possible to check, execute and share it as if it is normal code.
* Execution plans. Using the command `terraform plan` an execution plan is created that shows what Terraform will do when we would choose to apply this infrastructure. This allows us to check the building process before we commit to it. 
* Resource graphs. Terraform can build a graph of all your resources, useful to get a proper overview of your structure and to identify (non-)dependent or redundant resources.
* Cloud and change automation. Using the execution plans and resource graphs it is easy to get a overview of what Terraform is going to change, reducing (human) errors. 

Terraform was developed by HashiCorp and was released in 2014. Its popularity has been growing steadily over the last few years, to the point that Medium writer Pavan Belagatti now considers it an essential tool for cloud automation [[11](https://medium.com/devopslinks/why-should-terraform-be-one-of-your-devops-tools-29ae15861b1f)]. He praises its lively and open-source community, as well as the speed of its operations, and the fact that it was the first, and is still the best tool for when you're using different cloud platforms. 
 

## Practical Guide ##

Setting up Terraform is incredibly easy. The website, [https://www.terraform.io](https://www.terraform.io), guides you right through it, and even has support for Windows. You download the file, set the path, and are ready for execution. 

If you want to create a EC2 instance in AWS from a image AMI, you create a .tf file, with your AWS credentials, the type of instance you want to create and the AMI. The .tf file to create a resource with the name "example" could look something like this: 

```
provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08935252a36e25f85"
  instance_type = "t2.micro"
}
```

To start terraform in your directory you type `terraform init` and to apply the .tf code you just wrote you type `terraform apply` in your terminal. That's it. You just created your instance. Before using terraform apply you could use `terraform plan`. This command will show you exactly what actions terraform will perform when creating your instance. You can destroy your instance with the command `terraform destroy`. After creating the instance you can use terraform show to see the current state. You can view it by using `terraform show` or open the terraform.tfstatefile that gets automatically created after applying an infrastructure. In our example the state looks like this: 
```
aws_instance.example:
  id = i-084e5579b56c4a579
  ami = ami-08935252a36e25f85
  arn = arn:aws:ec2:eu-west-1:142563343559:instance/i-084e5579b56c4a579
  associate_public_ip_address = true
  availability_zone = eu-west-1b
  cpu_core_count = 1
  cpu_threads_per_core = 1
  credit_specification.# = 1
  credit_specification.0.cpu_credits = standard
  disable_api_termination = false
  ebs_block_device.# = 0
  ebs_optimized = false
  ephemeral_block_device.# = 0
  get_password_data = false
  iam_instance_profile = 
  instance_state = running
  instance_type = t2.micro
  ipv6_address_count = 0
  ipv6_addresses.# = 0
  key_name = 
  monitoring = false
  network_interface.# = 0
  password_data = 
  placement_group = 
  primary_network_interface_id = eni-07f1ef5ca750c5dcd
  private_dns = ip-172-31-34-253.eu-west-1.compute.internal
  private_ip = 172.31.34.253
  public_dns = ec2-34-254-190-219.eu-west-1.compute.amazonaws.com
  public_ip = 34.254.190.219
  root_block_device.# = 1
  root_block_device.0.delete_on_termination = true
  root_block_device.0.iops = 100
  root_block_device.0.volume_id = vol-03de81fc44e3261fa
  root_block_device.0.volume_size = 8
  root_block_device.0.volume_type = gp2
  security_groups.# = 1
  security_groups.3814588639 = default
  source_dest_check = true
  subnet_id = subnet-6e872e34
  tags.% = 0
  tenancy = default
  volume_tags.% = 0
  vpc_security_group_ids.# = 1
  vpc_security_group_ids.4045960438 = sg-c08d7cb3
```
Our previous example is especially useful if you're building your image in a separate environment, and use Terraform just to deploy it. However, if you want to build your instance in Terraform, or further initialize it, this is also possible. As they say themselves: "Infrastructure is continuously evolving, and Terraform was built to help manage and enact that change. As you change Terraform configurations, Terraform builds an execution plan that only modifies what is necessary to reach your desired state." Terraform does not only apply version control to your configurations but also to the state of your instance, so you can see how the infrastructure evolves over time.

Things that are easy to change using Terraform are: 
* AMIs. You can change your Ubuntu instance easily to a newer version by just adapting the AMI and re-applying Terraform. 
* Adding resources. All you need to do is edit the .tf file and add a line in a format such as:
```
resource "aws_eip" "ip" {
    instance = "${aws_instance.example.id}"
}
```
Note that this resource is from a different type than the previous one. This resource is dependent on the instance we previously created. Terraform acknowledges this and knows to create the instance first, before creating this extra resource. If you don't formally define a dependency in your structure, you can enforce it by adding a depends on parameter to your resource in the .tf file. You can also add non-dependent resources, using the same format we used for the first instance we created. 

Also supported by Terraform are features like adding provisioners during instance creation, and the parameterization of input variables, such as our aws credentials. For this last feature we can create a new .tf file to hold these variables, or define them as environment variables, or write them in the command line when create the instance. We could also parameterize for example to AMI code, to be mapped to the region we want to create our instance in. 

Your cloud infrastructure can grow easily through Terraform. To keep up with the current state of infrastructure you can use the `terraform graph` command. This builds a visualize graph of your infrastructure. For this to work nicely, you need to install GraphViz and Pydot, and can run a line such as the following in your command line in the folder where the .tf file is located. 
```terraform graph | dot -Tpng > graph.png```

Now we've talked about the basic features of Terraform, we can get a little bit more in depth. One of the functions Terraform supports and can be used in bigger cloud networks are modules. These "are self-contained packages of Terraform configurations that are managed as a group. Modules are used to create reusable components, improve organization, and to treat pieces of infrastructure as a black box." [[10](https://learn.hashicorp.com/terraform/getting-started/modules)]. Although many parameters can be added, the only argument required for modules is a source. This defines where the module can be retrieved, so that Terraform can download and manage it. If you are adding modules, it is necessary to re-run terraform init.
 
These modules have as a huge advantage that you can get programs running in the cloud with certain features, without even needing the skills to build this. Terraform's tutorial puts it like this: "After several minutes and many log messages about all of the resources being created, you'll have a three-server Consul cluster up and running. Without needing any knowledge of how Consul works, how to install Consul, or how to form a Consul cluster, you've created a working cluster in just a few minutes."[[11](https://learn.hashicorp.com/terraform/getting-started/modules)]

All the things we talked about before can be done locally, but the strength of the cloud is of course in the sharing of infrastructures and the remote storing of data. Terraform has a company especially for this: Terraform Enterprise, but the tutorial also shows how to set up a free, open-source software like Consul, or we can use S3 buckets, like we did in the Cloud Computing labs. 

To demonstrate Terraform we are creating an infrastructure with centralized scripts on GitHub, two different cloud platforms (AWS and Google Cloud Platform) operating modules and a DynamoDB-locked S3 bucket including CloudFront to store our state files. The reason of doing this is because this is a construction useful for when a team would work together on a project in Terraform. The code-sharing on GitHub is obvious, but we have to take care of the statefiles. This because if these change, the way Terraform will respond to your code is different. So if somebody changes the state of the cloud while you were just working on a new state, this can have all sorts of unforeseen consequences. We use DynamoDB to lock the state when somebody is working on it, so states don't overlap. The files for this are in GitHub, the main file is [example.tf](code/example.tf). Our variables are contained in [variables.tf](code/variables.tf). We also need [backend.tf](code/backend.tf) but it is important to only have this file in our directory if we are already created our bucket instance. So, first run `terraform init` and `terraform apply` without this file in the directory, and then again with this file. The second time only takes a little while, since Terraform first plans what changes need to be made, and only makes those, instead of destroying and recreating entire instance. 

For GCP you need to configure the proper credentials by passing them to Terraform in a json file. In the end we created 5 instances:   
* aws_cloudfront_distribution.distribution
* aws_dynamodb_table.dynamo_state_lock 
* aws_instance.myinstance
* aws_s3_bucket.mybucket
* google_compute_instance.default


You can see how these work together using the `terraform graph` function mentioned before. The final graph is shown below

![alt text](https://github.com/wookawb/CloudComputing/blob/master/Research-topic/images/graph.png)

A few things we learned during experimenting with Terraform and building this final product. 
* CloudFront takes a long time to apply, and a even longer time to destroy. Without it, the full script applies in about 2 minutes, and destroys in about 3 minutes, but when we include the CloudFront, Terraform takes over 10 minutes to apply and over 33 minutes to destroy. Also note that Terraform can not destroy the bucket with files in it. Finally, the Google instance is far slower to destroy than the AWS instance (3 minutes VS 30 seconds). Interestingly this means that the GCP instance takes longer to destroy than to create and instantiate. 
* We also experimented with using Microsoft's Azure as our second cloud platform, but found that the configuration with Terraform was more complicated and time consuming, so we changed strategy and went with GCP.
* Terraform creates quite a few files in your directory when you apply it. These are hard to delete and can be problematic when you destroy and then re-apply your code. This was especially a problem for the backend part of our application, since these files contain old states, and Terraform will always use previous states if it can find them. This is great for reducing redundant work, but in this case would cause many errors. 

## Conclusion ##

Terraform is definitely a platform we would recommend. We felt that its possibilities were way greater than we could explore, and did not find major negative points. The setbacks we faced we most likely caused by the cloud platforms themselves. In conclusion, Terraform is a great tool for cloud automation, for its ease of use, especially when using AWS, and its concise, precise instance graph. 
