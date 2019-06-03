# Compute


<p align="justify"> Compute refers to the capacity the providers have to offer resources and services for developers to deploy and run the applications built by them. In this case, both offer very similar services with given characteristics differentiating them. </p> 

<p align="justify"> Amazon AWS main compute services are EC2, Elastic Beanstalk and AWS Lambda. On the other hand, Microsoft Azure correspondingly provides Azure VM, App Service and Functions: </p> 

Service | AWS | Azure
--------| ----| ------
**Virtual Servers (IaaS)** | <a href= "https://aws.amazon.com/ec2/"> Elastic Compute Cloud (EC2) </a> | <a href= "https://azure.microsoft.com/en-gb/services/virtual-machines/"> Virtual Machines (VM) </a>
**Containers and orchestrators (CaaS)**|<a href= "https://aws.amazon.com/ecs/features/">EC2 Container Service (ECS)</a></br><br><a href= "https://aws.amazon.com/eks/">Elastic Container Service for Kubernetes (EKS)</a></br>|<a href="https://docs.microsoft.com/en-us/azure/container-service/">Azure Container Service</a></br><br><a href= "https://azure.microsoft.com/en-gb/services/kubernetes-service/">Azure Kubernetes Service (AKS)</a></br>
**Platforms (PaaS)**|<a href= "https://aws.amazon.com/elasticbeanstalk/">Elastic Beanstalk</a>|<a href= "https://azure.microsoft.com/en-gb/services/app-service/">App Service</a>
**Functions (FaaS)**|<a href= "https://aws.amazon.com/lambda/">AWS Lambda</a>|<a href= "https://azure.microsoft.com/en-gb/blog/introducing-azure-functions/">Azure Functions</a>
**Scalability**|<a href= "https://aws.amazon.com/autoscaling/">AWS Auto Scaling</a>|<a href= "https://azure.microsoft.com/en-gb/services/virtual-machine-scale-sets/">Virtual Machine Scale Sets</a></br><br> <a href= "https://azure.microsoft.com/en-gb/features/autoscale/">Auto Scaling</a></br><br><a href= "https://docs.microsoft.com/en-us/azure/app-service/web-sites-scale">App Service Scale Capability (PAAS)</a></br>

In the following section, the comparison of these services is furthered. 

## Virtual Servers (IaaS)

<p align="justify"> These are defined as infrastructure (IaaS) services that offer resizable compute capacity in the cloud. To do so, both provide virtual machines or instances (as its referred to in AWS) that contain virtual CPU, virtual memory, temporary storage, and networking capacity and give a customer the flexibility to choose the appropriate mix of resources for workloads. These can be persisted in Block Store (EBS), a block storage volumes service,  in the case of AWS; and Blob Storage, storage for unstructured data service, in the case of Azure. Additionally, both EC2 and VM offer six types of instances with different purposes: </p> 

- General Purpose: Balanced CPU-to-memory ratio
- Compute-optimised: High CPU-to-memory ratio
- Memory-optimised: High memory-to-CPU ratio. Great for database servers
- Storage optimised: High disk throughput and IO
- GPU: Specialized for heavy graphic rendering and video editing
- High performance compute: fastest and most powerful CPU

Each has specific <a href= "https://araihan.wordpress.com/2018/08/02/amazon-ec2-and-azure-virtual-machine-instance-comparison/">references for these in both Windows and Linux OS. </a>

<p align="justify"> When talking about the differences, the first one is that AWS user can configure their own VMs, chose a pre-configured operating template called Amazon Machine Image (<a href= "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html">AMI</a>) or even customize their own AMIs. In contrast, while Azure users choose the Virtual Hard Disk (<a href= "https://docs.microsoft.com/en-us/azure/virtual-machines/linux/managed-disks-overview">VHD</a>), equivalent to a machine instance, to create a VM; this can be can be pre-configured by Microsoft, the user or a third party. </p> 

## Containers and orchestrators (CaaS)

<p align="justify"> Containers, a popular alternative to VMs, are offered by both services in conjunction with its orchestrators (Kubernetes). While both offer a secure, reliable and scalable service for both Windows and Linux; each has advantages that make it better for given scenarios. </p> 

<p align="justify"> ECS/EKS allows lightweight services to experience before moving to the cloud and its friendly with developers that don’t have an understanding of server infrastructure. However, it is potentially more expensive than other services. On the other side, Azure ACS/AKS are services better built for Windows developers and is more pricing friendly with AKS actually being free. However, the service has proven to be slower during deployments and doesn’t support hybrid containers.
</p> 

## Platforms (PaaS)

<p align="justify"> On top of IaaS, providers have Platform as a Service (PaaS) which offers online platform for developers to deploy apps by matching the different components within the application with the different components in the infrastructure. Both offer similar fully managed PaaS that handle entire processes like capacity provisioning, load balancing, auto-scaling, and the monitoring of application performance with ease. Azure tools such as cloud services, container service, functions, batch, app services etc. while AWS also offers similar solutions with Elastic Beanstalk, Batch, Lambda, container service, among others. </p> 

<p align="justify"> When looking at a higher level, both services cover almost the same frameworks – .Net, .Net Core, Node, Java, PHP, Python, Ruby, Docker; with the additional .Net Core support for Azure App Service. They also have very good DevOps capabilities having the same name for this service: </p> 

<p align="center"><img src="https://github.com/sdiazben/Research-topic/blob/master/images/devopsazure.png"/></p>
<p align="center">Figure 1: Azure DevOps schema</p>
</br>
<p align="center"><img src="https://github.com/sdiazben/Research-topic/blob/master/images/devopsAWS.jpg"/></p>
<p align="center">Figure 2: AWS DevOps schema</p>

If interested, here are some <a href= "http://flusharcade.com.au/aws-elastic-beanstalk-or-azure-app-service-part-1/">examples</a> on how they both work. 

However, even with all this, some argue that AWS doesn’t many features in the app hosting side as Azure does.


## Functions (FaaS)

<p align="justify"> These services are meant to provide serverless computing, or FaaS (Functions-as-a-Service) is a form of cloud compute in which application developers depend on third party services to manage the server-side of operations, allowing them to focus on building applications on a function-by-function basis. The serverless platform manages the deployment, running and scaling of code and the provisioning, maintaining and scaling of servers. </p>

<p align="justify"> Functions and Lambda are also quite similar in this department. Both Azure Functions and AWS Lambda support Node.js, Python and C#. Lambda further supports Python and Java and Azure offers extended support for F# and PHP; however, both continue to build their language portfolio. Also, they provide triggers that can be used to invoke functions on each of their platforms and their respective wider set of cloud services. </p>

<p align="justify"> Talking about differences, in this case Lambda is considered to offer more services in terms of extending their functions into the cloud ecosystem, than Azure. Actually they are said to be the standard of FaaS in the market. However, the main current difference between them is that Microsoft’s service is open-sourced while Lambda is not, allowing users to deploy it on local servers or alternative cloud services. Each runs on a different execution platform: Azure Functions runs in a Windows environment, AWS Lambda is constructed from machine images, which run on Linux. Azure also offers an App Service plan aside of their Dynamic Service plan which is pay per function, being this the only option in Lambda. </p> 


