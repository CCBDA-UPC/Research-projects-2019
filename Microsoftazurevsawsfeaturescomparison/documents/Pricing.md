# Pricing

<p align="justify">Both options offer competitive prices in different ways depending on the needs of each client. Throughout time, they have been able to provide new and innovative discount options, provide additional instances, and drop billing increments. However, as costs decrease, complexity increases. Here are some is the comparison of the billing characteristics that affect the way each one of them is priced: </p>

Before, going into this though, it’s important to understand the standard billing models for Cloud providers:

- <p align="justify">Subscription-based: services are charged based on a cloud catalog and cloud customers typically pay upfront, prior to receiving access to cloud services. Prices are often based on the subscription's length and a longer subscription often translates to a lower cost. Subscribers are billed for all the resources to which they are subscribed, even if they’re used or not. </p>

  - <p align="justify">Enterprise billing service: number of active users assigned to a particular cloud subscription</p>

- <p align="justify">Pay-as-you-go: Billing is done according to the services and resources used in the course of time. This is a good option if long-term and binding contracts want to be avoided. </p>


## Subscriptions

Azure and AWS offer different kinds of subscriptions: 

For Azure:
-  Free Subscription (see below) 

-  <p align="justify">Azure Student subscription: the same idea as the free trial but it's directed to students, it lasts for 12 months and US $100 credit is given </p>
-  <p align="justify">Azure Enterprise Agreement: provides flexibility for enterprise level clients to get software licenses and services with included discounts.</p>

For AWS: 
-  Free Tier (see below) 

-  <p align="justify">AWS Educate: a grant program for educators, academic researchers and students. Recipients are provided with service credits for an active AWS account.</p>

## Free Tier/Subscription Service

Both AWS and Azure offer a ‘free tier’ service for new and initial subscribers.

<p align="justify">AWS allows subscribers to try out most its services free for a year, including RDS, S3, EC2, Elastic Block Store, Elastic Load Balancing (EBS), etc. This will allow, for example, to use EC2 and EBS on the free tier to host a website for a whole year. This due to the fact that EBS pricing will be zero unless usage exceeds the limit of 30GB of storage and EC2 allows 730 hours of a t2.micro instance.</p>

<p align="justify">Azure’s free tier works similarly.  Services like App Service, Virtual Machines, Azure SQL Database, Blob Storage and Azure Kubernetes Service (AKS) are free for the initial period of 12 months. It offers a US $200 credit for other services. Azure also provides the Functions (Serverless - FaaS) service at 1 million requests free every month throughout the subscription.</p>

## Pay-as-you-go

<p align="justify">AWS mainly provides this as its pricing service and they charge use per hour while Azure charges per minute of use. Both offer the following sub-models to adapt to clients’ different needs:</p> 

- **On demand**: <p align="justify"> The two providers offer pay-per-use without upfront cost. These instances work best for applications that have short-term, irregular workloads but critical enough as to not be interrupted. These are most useful during the testing or development phase of applications. The following table shows the cost per hour and per GB of memory given instances in varying levels of computing power:</p> 

  |            VM Type            | AWS OD Hourly | Azure OD Hourly | AWS OD / GB RAM | Azure OD / GB RAM |
  |:-----------------------------:|:-------------:|:---------------:|:---------------:|:-----------------:|
  | Standard 2 vCPU w Local SSD   |     $0.13     |      $0.10      |      $0.02      |       $0.01       |
  | Standard 2 vCPU no local disk |     $0.10     |      $0.10      |      $0.01      |       $0.01       |
  | Highmem 2 vCPU w Local SSD    |     $0.17     |      $0.13      |      $0.01      |       $0.01       |
  | Highmem 2 vCPU no local disk  |     $0.13     |      $0.13      |      $0.01      |       $0.01       |
  | Highcpu 2 vCPU w Local SSD    |     $0.11     |      $0.09      |      $0.03      |       $0.02       |
  | Highcpu 2 vCPU no local disk  |     $0.09     |      $0.09      |      $0.02      |       $0.02       |

  The prices are very similar for both options. 

-  **Reserve-and-pay-less**: 
 
   - <p align="justify"> AWS: Reserve an instance, under the schema Reserved Instance (RI), for 1 or 3 years with upfront cost based on use. RI offers discounted hourly rates and capacity reservation for its EC2 and RDS services. With it, a subscriber can reserve a resource and can save up to 75% of total billing costs in the long run. </p>
   - <p align="justify"> Azure: They also allow an RI schema when subscribers sign up for one to three-year terms for Windows and Linux virtual machines (VMs). This allows savings up to 72%. Additionally, there’s added flexibility as they allow to cancel the Azure RI subscription at any time and return the remaining unused RI to Microsoft for an early termination fee. </p>
   
    <p align="justify"> To get the benefit of these options, subscribers need to consider many different factors: Historical usage (by region, instance type, etc.), steady-state vs. part-time usage, usage growth or decline, probability of switching cloud service providers, the alternative computing models like serverless, containers, etc. Here’s a table with the cost per year and per GB of memory given instances in varying levels of computing power: </p>
    
      |         VM Type  | AWS 1 Y RI Annual | Azure 1 Y RI Annual | AWS 1 Y RI Annual / GB RAM | Azure 1 Y RI Annual / GB RAM|
      |:-----------------------------:|:-----------------:|:-------------------:|:--------------------------:|:--------------:|
      | Standard 2 vCPU w Local SSD |        $867       |         $508        |            $116            |              $64             |
      | Standard 2 vCPU no local disk |        $622       |         $508        |             $78            |              $64             |
      | Highmem 2 vCPU w Local SSD    |        $946       |         $683        |             $63            |              $43             |
      | Highmem 2 vCPU no local disk  |        $850       |         $683        |             $56            |              $43             |
      | Highcpu 2 vCPU w Local SSD    |        $666       |         $543        |            $178            |             $136             |
      | Highcpu 2 vCPU no local disk  |        $543       |         $543        |            $136            |             $136             |      

    Azure offers in average better-discounted rates for all compute instances. 
    
-  **Use-more-and-pay-less**: 

    <p align="justify"> Additionally, for AWS there’s another sub-mode which gives discounts based on the subscriber’s usage. Subscribers can benefit from the economies of scale, allowing their businesses to grow while costs are kept relatively under control. For EC2, the discount can go up to 10% if more is reserved: </p>

    <p align="center"><img src="https://github.com/sdiazben/Research-topic/blob/master/images/AWSfarepic.png"/></p>
    <p align="center">Figure 1: AWS fares given different storage sizes</p>
