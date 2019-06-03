# Amazon AWS vs Microsoft Azure
By: Buse Özer and Sara Díaz 

<p align="center"><img src="./images/awsVsAzure.jpg"/></p>

<p align="justify">
 Nowadays the need of online resources in the cloud has become crucial for companies throughout different industries. These offer the advantage of being scalable and dynamical to arising and on-demand needs without having huge impact on the cost. Although many platforms have risen to offer these services, Microsoft Azure and Amazon AWS are among the main key players. But what differentiates them? Is one better than the other? When should a company use one or the other? This research project looks to answer this questions by first understanding each of them and then comparing their main features.</p>

## Microsoft Azure

<p align="justify"> Azure is a private and public cloud platform that offers a set of services all developed by Microsoft Inc. since 2010. This services help IT specialist to build, deploy and manage applications. For more detailed information, they provide a detailed documentation in their <a href="https://azure.microsoft.com/en-gb/overview/what-is-azure/">website</a>. </p>

### Services

Its most popular services include: 

<p align="center"><img src="./images/azureproducts.png"/></p>
<p align="center">Figure 1: Azure most popular services</p>
 
<p align="justify"> By 2019, Azure counts with 54 regions to host its operations, more than any other cloud provider. Database products like SQL Azure DB are present in 46 of this locations (85% of the total). This gives clients the opportunity to choose a desired location according to their needs of response and latency times, as well as IT knowledge in the region, risk of natural disaster occurrence, etc. </p> 
 
<p align="center"><img src="https://azurecomcdn.azureedge.net/cvt-a27fc75dcc932103683fbfcee92c51b694a67773a46466966b5fee3e80c103ce/images/shared/regions-map-large.svg"/>Figure 2: Azure's regions</p>

In general it divides its services in into two main groups - infrastructure and Platform Services: 

<p align="center"><img src="./images/ServicesSchema.png"/>Figure 3: Azure's services catalogue</p>

The platform services are also supported by Security and Management services as well as a they can be deployed on hybrid cloud services (public and private clouds).

### Architecture

<p align="justify"> This section explains the basis of Azure’s architecture. Azure uses a technology called Virtualization which separates the coupling between a computer’s hardware and operating system by using a layer named a Hypervisor, which emulates a computer’s functions and CPU within virtual machines. These virtual machines can run both Windows and Linux operating systems and optimize the abstracted hardware. </p>

<p align="center"><img src="./images/awsArch.png"/>
Figure 4: Azure's basic architecture. To better understand these concept, Azure provides the following <a href="https://www.microsoft.com/en-us/videoplayer/embed/RE2ixGo">video</a></p>

<p align="justify"> Each of its data centers distributed around the world contains many racks which containing servers and each of this implements this Hypervisor technology to run multiple virtual machines. A network switch provides connectivity between the servers.  create it within the servers. After this the user can access it and all its functions. Each server within the rack runs a special piece of software called the Fabric Controller, which, at the same time, is connected to another software called the Orchestrator which manages every activity in Azure included, but not limited, to user requests. These request are created by using the web API, which is more popularly accedes through the Azure Portal (there are other ways to access it). The request is packaged and sent to the Fabric Controller. </p>

<p align="justify"> On a higher level, the architecture depends on the clients needs. Azure has made available  <a href="https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/architectures">reference architectures</a>  to guide users. </p>

## Amazon Web Services (AWS)

<p align="justify">  Amazon Web Services (AWS) is a cloud service platform, which provides services in different domains such as compute, storage, delivery and other functionality which help business to scale and grow. For more detailed information, they provide a detailed documentation in their <a href="https://aws.amazon.com/what-is-aws/">website</a>. </p>

### Services
 
<p align="justify"> AWS allows users to use different variety of services to create and deploy applications in the cloud platform. These services are designed in such a way that they work with each other and produce a scalable and efficient outcome. AWS was launched in 2006 and has been one of the key players in the industry. Like other cloud platforms offer various advantages such as management overhead reduction, cost minimization etc. Within its main services are: </p>

<p align="center"><img src="./images/AWSservices.png"/></p>
<p align="center">Figure 5: AWS Services</p>

<p align="justify"> AWS spans 61 Availability Zones within 20 geographic regions around the world, with announced plans for 15 more Availability Zones and five more Regions (Bahrain, Cape Town, Hong Kong SAR, Jakarta, and Milan): </p>

<p align="center"><img src="https://d1.awsstatic.com/about-aws/regions/Global%20Infrastructure%20Map-Jakarta%20and%20Hong%20Kong_update.1fcad512779992000de22e2e3344c3839d2a8d6b.png"/></p>
<p align="center"><img src="./images/regions.png"/>Figure 6: AWS Regions</p>

### Architecture 

AWS bases its architecture on the following components, being one of the main ones the EC2 (Elastic Compute Cloud) which is the starting point for virtualization: 

<p align="center"><img src="./images/AWSarch.png"/></p>
<p align="center">Figure 7: AWS basic architecture</p>

This can also be seen given different levels of abstraction: 

<p align="center"><img src="./images/abstraction.png"/>
Figure 8: AWS basic architecture by levels of abstraction and customer involvement. For the complete explanation of the diagram above, the following <a href="https://aws.amazon.com/blogs/architecture/compute-abstractions-on-aws-a-visual-story/">link</a> is provided by AWS documentation</p>

<p align="justify">As seen, below EC2 there might be a EC2 bare metal instances that allow customers direct access to hardware. As said in the <a href="https://aws.amazon.com/blogs/architecture/compute-abstractions-on-aws-a-visual-story/">AWS website documentation</a>:</p>

> <p align="justify">“…. (AWS customers) wanted access to the physical resources for applications that take advantage of low-level hardware features such as performance counters and Intel® VT that are not always available or fully supported in virtualized environments, and also for applications intended to run directly on the hardware or licensed and supported for use in non-virtualized environments.”</p> 

<p align="justify"> It's important to know that this can be changed. Due to the different needs of its millions of customers, AWS requires a certain degree of flexibility in the services offered because there are many different patterns, use cases, and requirements to satisfy. Due to that many architecture layouts might be created. This is why it offers documentation on reference architecures in it's called <a href="https://aws.amazon.com/architecture/?awsf.quickstart-architecture-page-filter=highlight%23new">Architecture Center</a>; offering different arragements depending on the defined requirements.</p>

## Comparison Summary 

Given the research done, the following comparison summary table was made: 

Attribute | Comparison
--------| ----
**Trajectory** | AWS is the pioneer being launched in 2006 (4 years prior to Azure)
**Availability Zones** | <p align="justify">Azure has 54 regions in 140 countries, more than any other cloud provider including AWS, which has 20 in 61 countries. </p>
**User-friendliness** | <p align="justify">The general consensus is that Azure is more user-friendly and easy-to-follow for crowds without technical background than AWS. Following this, AWS is said to be more developer-friendly. </p>
**Clients** | <p align="justify">Both companies cater to a high amount of companies (many which are reported in Forbes 500), however AWS maintains the lead as the pioneer while Azure bases its client capture on their existing relation to Microsoft products. </p>
**Compliance** | <p align="justify">Both of them have comparable amounts of compliant offerings, having the same level of security and data protection. </p>
**Hybrid Cloud Capabilities** | <p align="justify">Both of them have comparable amounts of compliant offerings, having the same level of security and data protection. </p>
**Market** | <p align="justify">AWS has 32% of the whole cloud market while Azure stands with 16% by the end of 2018. However, Azure grew the most out of the more with a figure of +76% vs +46.3% from AWS </p>
**Pricing** |  <p align="justify">Both have driven down their prices and continue to use their scale to achieve low costs. Azure shows to offer better discount rates for long term contracts (1-3 years). It also offers the enterprise subscription, to cater to specific needs of this client segment by offering discounts for software licenses and services</p>
**Compute (IaaS, Containers, PaaS, Serverless, Scalability)** |  <p align="justify"><br>Comparable services with minor differences in all these services.</br></br><br>AWS has EC2 (IaaS), ECS & EKS (Container management), Elastic Beanstalk(Paas), Lambda (Serverless) and AWS Auto Scaling.</br></br><br>Azure has VM (IaaS), Azure Container Service & AKS (Containers), App Service (PaaS), Functions (Serverless), and AutoScaling. </br></p>
**Storage** |  <p align="justify"><br>Comparable services with AWS having the lead in terms of documentation ( including free webinars, tons of sample code and libraries, etc.) for Simple Storage Service (S3), its main storage service.</br></br><br>While AWS offers Simple Storage Service (S3), Azure’s main service is Blob Storage based in block storage.</br></br></p>
**Network** |  <p align="justify">Comparable services with AWS in cloud virtual networking, Cross-premises connectivity, load balancing, etc. </p>
**Database** |  <p align="justify">Both AWS and Azure support relational and NoSQL databases.</p>
**Big Data and Analytics Platforms** |  <p align="justify"><br>Both providers offer similar building blocks; data processing, data orchestration, streaming analytics, machine learning and visualisations.</br></br><br>Azure is believed to be strongest in visualization as it has more trajectory specifically with PowerBI.</br></br><br>Also, Azure is very strong in the machine learning space, offering pre-trained models and is the only provider to offer the capability for organisations to track and document their data assets. </br></p>



## Components
To get a more detailed analysis of some of the above components, the following resources are available to consult:

1.  [Market](https://github.com/sdiazben/Research-topic/blob/master/documents/Market.md) 
2.  [Pricing](https://github.com/sdiazben/Research-topic/blob/master/documents/Pricing.md) 
3.  [Compute](https://github.com/sdiazben/Research-topic/blob/master/documents/Compute.md)   
4.  [Storage](https://github.com/sdiazben/Research-topic/blob/master/documents/Storage.md)
5.  [Network](https://github.com/sdiazben/Research-topic/blob/master/documents/Network.md)
6.  [Database](https://github.com/sdiazben/Research-topic/blob/master/documents/Database.md)
7.  [Big data & Analytics](https://github.com/sdiazben/Research-topic/blob/master/documents/Big%20data%20%26%20Analytics.md)
<a name="headers"/>

## Conclusions

As a conclusion, although both cloud providers offer similar capabilities in terms of services, there are slight differences: 

1. <p align="justify">AWS has the biggest market share mainly due to its pioneering status and its continuous evolution. However, Azure captures clientele due to previous ties with their Microsoft products. 
2) <p align="justify">Microsoft is more user-friendly to non-technical backgrounds. AWS is more suitable for developers with deeper technical knowledge, as it allows flexibility to configure and manage services.
3)  <p align="justify"> Azure offer better support to provide movement between the cloud and on-premise data centers; AWS is still relatively new on this area. </p>
4) <p align="justify">AWS aligns with Linux and open source projects. </p>
5) <p align="justify">Azure offers better discounts for long-term contracts.</p>
6) <p align="justify">Azure has 54 regions in 140 countries, more than any other cloud provider including AWS, which has 20 in 7) countries. </p>
8) <p align="justify">Azure provides security using defined roles with permission to control accessibility, Azure does not have customization on user level, permission can be assigned to whole account.</p>
9) <p align="justify">Lastly, Amazon offers many products which can sometimes be a disadvantage because it is hard to be aware of all services and makes it complicated. However it does not change the truth that it has rich collections of tools and services and massive scale which attracts many customers. Microsoft has begun to bridge the gap of maturity and offering the widest range of functionality, between the two. With its plans to strengthen ties with its on-premise software and ongoing investment in building out the Azure cloud platform, it will continue to bridge that gap. </p>

At the end of the day, both Azure and AWS offer very similar services at competitive pricing, so it is not necessarily a matter of one provider being better than the other; it is about choosing the solution that adopts best. 


## References
<p> Ferre, M. R. (2019, April 16). Compute Abstractions on AWS: A Visual Story | Amazon Web Services. Retrieved from https://aws.amazon.com/blogs/architecture/compute-abstractions-on-aws-a-visual-story/</p>
<p> Comparing Kubernetes Services on AWS vs. Azure vs. GCP. (2019, March 15). Retrieved from https://www.sumologic.com/blog/kubernetes-aws-azure-gcp/</p>
<p> Sharma, A. (2019, March 28). Battle Of BI Tools: AWS QuickSight Vs Power BI. Retrieved from https://www.analyticsindiamag.com/battle-of-bi-tools-aws-quicksight-vs-power-bi/</p>
<p> Urdhwareshe, R. (2018, October 12). Amazon EMR and Azure HDInsight: A Comparison. Retrieved from https://www.cuelogic.com/blog/amazon-emr-and-azure-hdinsight-a-comparison </p>
<p> (n.d.). Retrieved from http://www.devx.com/blog/dev_issues/comparing-analytics-platforms-azure-vs.-aws-part-3.html</p>
<p> (n.d.). Retrieved from https://www.rightscale.com/blog/rightscale-news/compare-top-public-cloud-providers-aws-vs-azure-vs-google</p>
<p> Edureka! (2017, April 05). AWS vs Azure | Difference Between Microsoft Azure and Amazon AWS | AWS Training | Edureka. Retrieved from https://www.youtube.com/watch?v=m7Eh5Eu56Dw </p>
<p> Microsoft Azure vs Amazon Web Services | Find Out Top 22 Diffrences. (2019, April 01). Retrieved from https://www.educba.com/microsoft-azure-vs-amazon-web-services/</p>
<p> An In-Depth Comparison Between Azure App Service and AWS Elastic Beanstalk. (n.d.). Retrieved from https://www.cabotsolutions.com/an-in-depth-comparison-between-azure-app-service-and-aws-elastic-beanstalk</p>
<p> Anna. (2018, December 14). Members. Retrieved from https://www.bizety.com/2018/12/14/microsoft-azure-functions-vs-aws-lamdba/</p>
<p> Manmohan. (n.d.). Microsoft Azure vs Amazon AWS: Comparison Between Two Cloud Computing Giants. Retrieved from http://www.evontech.com/what-we-are-saying/entry/microsoft-azure-vs-amazon-aws-comparison-between-two-cloud-computing-giants.html</p>
<p> What is Cloud Networking? How the Cloud is Changing Networking. (n.d.). Retrieved from https://www.citrix.com/glossary/cloud-networking.html </p>
<p> Azure vs. AWS: Key Differences. (n.d.). Retrieved from https://www.guru99.com/azure-vs-aws.html</p>
<p> Luijbregts, B. (2017, October 05). Understanding Azure Data Storage Options - DZone Cloud. Retrieved from https://dzone.com/articles/understanding-azure-data-storage-options</p>
<p> Azure vs. AWS Analytics and Big Data Services Comparison. (2018, March 27). Retrieved from https://thomaslarock.com/2018/03/azure-vs-aws-analytics-and-big-data-services-comparison/</p>
<p> Mindmajix. (2018, June 18). Amazon Web Services - Basic Architecture. Retrieved from https://mindmajix.com/aws-architecture-diagrams-solution</p>

  
 
