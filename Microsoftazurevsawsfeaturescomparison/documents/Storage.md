# Storage

<p align="justify"> Storage refers allows customers to store and protect specific amount of data for a range of use cases such as websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytic.</p>

<p align="justify"> AWS offers storage services that includes Simple Storage Service (S3) for object storage, Elastic Block Storage (EBS) for persistent block storage for use with EC2, and Elastic File System (EFS) for file storage, whereas Microsoft Azure offers basic storage services include Blob Storage for REST-based object storage of unstructured data, Queue Storage for large-volume workloads, File Storage and Disk Storage.</p>


Service | AWS | Azure
--------| ----| ------
**Object storage** | <a href= "https://aws.amazon.com/s3/"> Simple Storage Service </a> | <a href= "https://azure.microsoft.com/en-gb/services/storage/blobs/"> Azure Blob Storage </a>
**Virtual Server disk infrastructure**|<a href= "https://aws.amazon.com/ebs/">Elastic Block Store (EBS)</a>|<a href="https://azure.microsoft.com/en-gb/services/storage/disks/">Azure Disk Storage</a>
**Shared file storage**|<a href= "https://aws.amazon.com/efs/">Elastic File Storage (EFS)</a>|<a href= "https://azure.microsoft.com/en-gb/services/storage/files/">Azure File Storage</a></br>

## Object Storage

<p align="justify"> S3 provides simple object storage without hierarchy, useful for hosting website images and videos, data analytics, and both mobile and web applications. Object storage manages data as objects, meaning all data types are stored in their native formats. There is no hierarchy of relations between files with object storage — data objects can be distributed across several machines. You can access S3 service from anywhere via HTTP and HTTPS protocols on the internet. In addition, S3 allows users to host a static website content. </p>

<p align="justify"> S3 is the most widely used storage service among storage services and can be used standalone. There are several advantages of using Simple Storage Service. First of all, it provides an extensive documentation which guides developers for various tasks. Also, it offers SDKs for different programming languages such as Python, Javascript and etc. Moreover, it allows user to choose different storage classes such as Standard for frequent use, Infrequent Access Storage for infrequent use and Glacier for long-term storage. For instance, customers can move their data, which they use infrequently, to Infrequent Access Storage which costs less than Standard Access Storage rather than storing all data in Standard Access Storage. In addition, it it easy to integrate with other AWS products like EC2 and CloudFront and allows server-side encryption which is free. However if customer wants to provide encryption keys, it costs 1 USD per key/month.
Despite advantages, there are also some disadvantages. Firstly, for any serious support, they require the AWS Support Plan which costs 29 USD per month and it is billed separately from S3 bucket billing. Secondly, for beginners, it is not so intuitive to configure and set permission. Lastly, it has a complex pricing schema. </p>

<p align="justify"> Azure Blob Storage, Blob stands for Binary Large Object which is a file. It is used for storing massive amount of unstructured data such as text and binary files also images, videos and audios can be stored. There are three ways to store data. 

- Block Blob 
It is the basic and cheapest way to store data. Data is divided into smaller parts and is stored as blocks. It is ideal for backups and storing user data. One blob can be up to 4.77 TB.
Append Blob
- Block Blob cannot be changed without re-uploading it. However, there are situations, when you need to update the file on a regular basis. Append Blobs were created just for that purpose. It is ideal for storing logs and meta-data.
- Page Blob
Page Blobs are the basis for Microsoft Azure virtual machines environment. They are specifically designed to meet the restrictions for disks. </p>

## Virtual Server disk infrastructure

<p align="justify"> Elastic Block Store provides persistent block-level data storage. Block storage stores files in multiple volumes called blocks, which act as separate hard drives. Block storage devices are more flexible and offer higher performance than regular file storage. It requires to be mounted onto an Amazon EC2 instance. Use cases include business continuity, software testing, and database management. </p>

<p align="justify">Disk Storage works on the basis of Page Blobs. It allows to create a disk for a virtual machine. The disk which is created in Disk Storage, can be accessed from only one VM. It can be thought as local drive. There are two options for speed of disk which are HDDs (standard disks cheap and slow )and SSDs (premium disks expensive and fast).</p>

## Shared file storage

<p align="justify">Elastic File Storage is a shared, elastic file storage system that grows and shrinks as adding and removing files. It offers a traditional file storage paradigm, with data organized into directories and subdirectories. If a user wants to run an application with high workloads that needs to be scaled and relatively fast, EFS can be an optimal option because it automatically scales. EFS is useful for SaaS applications and content management systems. It can be mounted onto several EC2 instances.

<p align="justify">File Storage is second storage type and is designed to meet needs of Virtual Machines. Unlike Disk Storage, it stores files that can be accessed from different VMs. It is similar EFS in AWS. </p>

