# Amazon Managed Streaming for Kafka (MSK)

## Authors

René Gómez Londoño (renegomezlondono@gmail.com) 
Ivan Salfati (ivansalfatift@gmail.com)

## Table Of Contents

[Introduction](#introduction)

[Stream Processing](#stream-processing)

[Apache Kafka](#apache-kafka)

[Architecture](#architecture)

[Amazon Managed Streaming for Kafka](#amazon-managed-streaming-for-kafka)

[MSK - Best Practices](##best-practices-msk)

[Conclusion](#Conclusion)

## Introduction

Digitization and web 2.0 has led to multiple data sources with structured and unstructured data. But the problem does not stop there, we have also created different specialized tools to store, query and analyze such data. The combination of more data sources and the need to get this data into diverse systems leads to a huge data integration problem. From the architectural point of view, the rise of event data have forced to change from _monolithic_ applications to more scalable systems with _Services Oriented Architectures_ (SOA) and more recently _Microservices_.

[![distributed-system-problems](img/distribution-problem.png)](https://twitter.com/mathiasverraes/status/632260618599403520)



When systems reach a critical level of dynamism we have to change the way of model and design the applications. However, this also increases the complexity of the communication systems required to properly transport data from the different sources to the multiple target systems. Companies easily end up building webs of micro-services, which are difficult to manage, debug and maintain.

[![microservices](img/00-microservices-oldarchitecture.png)](https://www.confluent.io)


The appropriate systems architecture for this inherent dynamic nature of complex engineered systems is the event-driven architecture, built around the production, detection, and reaction to events that take place in time. 

The aim of stream processing platforms as Apache Kafka is precisely provide the capacities to process events in _real time_. Furthermore, since Big Data applications are deployed on the cloud it is also important to study how to deploy Kafka in such infrastructures. 

In this document, we explore some concepts behind stream processing, Apache Kafka and the cloud computing services provided to manage Kafka clusters in the Amazon cloud computing platform. We also present the typical architecture for Kafka solutions, the data abstraction and its importance in the whole Kafka’s ecosystem. At the end of the document, we present the use cases and some real production architectures and best practices.


## Stream Processing

### Event centric design 
More than data stores, a company is an active process, continuously reacting and operating as events occur. In consequence, event-centric architectures have emerged, design patterns built around the production, detection, and reaction to events that take place in real time ([Fowler 2017](). Companies are rethinking their business as a stream of events and how to respond to those events. This perspective enables companies to model what happens in their business as events: the sales, the orders, the customer experience and behavior are streams of events that again, model the operation of the business. They key is to detect such events, find relations between them and react in a proper manner. 

### Stream processing platform

Data stores somehow are based on the illusion of static data, using tables as the data abstraction. The *purpose of streaming platforms is to model change explicitly*, thinking in data flows and using a log as data abstraction. The following visualization made by [Alooma](https://www.alooma.com) represents the idea of data streams:

![streaming-platform](./img/datastream.gif)

Both situations, data integration and events processing require new technological solutions. The data generated continuously by thousands of data sources that send data records simultaneously is called **streaming data** ([AWS 2018](aws-2018)). The ability to process/react in real time to messages/events is called **stream processing**.


## Apache Kafka

Kafka is a distributing stream processing platform. Kafka got its start as an internal infrastructure system at LinkedIn. According to Jay Kreps ([Narkhede et al. 2017](narkhede-2017)) 

> Kafka tries to solve the problems related with handling _continuous flows of data_. 

For this reason, Kafka clusters are part of the data processing architecture of  a lot of companies like LinkedIn, Yahoo!, Twitter, Netflix, Spotify, Uber and many more.

### Understanding Kafka

In Kafka, the data records are known as messages and they are categorized into **topics**. Think of **messages** as the data _records_ and **topics** as a database **table**. 
 
Topics are additionally broken down into a number of **partitions** to be stored in a single **log**. This means messages are written down in partitions in an **append-only** fashion, and are read in order from beginning to end by **consumers**. 
Topics are divided into partitions to allow distribution across multiple servers if it is required. This provides redundancy and scalability. 

As was mentioned, Kafka uses a producer/consumer pattern. Kafka allows application **subscription** to one or more topics to store/process/react to the stream of records produced to them. Each client has its own **offset**, which is a pointer to the next message the consumer has to process. With the offset a consumer can stop and restart the process (or fail) without losing its place. This is why Kafka allows different types of applications to integrate to a single source of data. The data can be processed at different rates by each consumer. 

Another important concept in Kafka is the **consumer groups**, which are nothing more than consumers working together to process a topic. It allows adding scale processing of data in Kafka.

All these concepts and the way they are related is the reason why at the beginning Kafka was considered a distributed commit log. However, the API for processing the streams was later added and with it, Kafka became a streaming processing platform. These different concepts are illustrated in the following figure:

![kafka-components](img/03-kafka-concepts.png)


### Architecture
Kafka defines different APIs to decoupling the capabilities it provides.

- **Producer API:** The producer API allows applications to send streams of data to topics in the Kafka cluster.
- **Consumer API:** The Connect API allows applications to read streams of data from topics in the Kafka cluster.
- **Connect API:** The consumer API allows implementing connectors that continually pull from some source data system into Kafka or push from Kafka into some sink data system.
- **Streams API:** The Streams API allows transforming streams of data from input topics to output topics. Using the API is possible to transform, aggregate and derive new data.
- **AdminClient API:** The AdminClient API supports managing and inspecting topics, brokers, ACLs, and other Kafka objects.

Putting all together, this is how the main components are connected:

![kafka-APIs](img/06-kafka-cluster.png)

Source: [Sabri Skhiri, Euranova](https://euranova.eu)

Going back to the microservice system explored at the beginning of this document, the following figure represents the same system orchestrated using Kafka as a streaming platform:

![kafka-APIs](img/07-architecturewithkafka.png)

 The ability to decouple producers and consumers using an event log as an intermediate layer allows the [service choreography](https://en.wikipedia.org/wiki/Service_choreography):

> "Dancers dance following a global scenario without a single point of control"

With this architecture, many components can subscribe to events stored in the event log and react to them asynchronously. 

At this point, it is important to remember the communication patterns involved in Kafka. Notice that a **message queue** allows to **scale processing** of data over multiple consumer’s instances that process the data. Unfortunately, once a message is consumed from the queue the message is not available anymore for other consumers that may be interested in the same message. **Publisher/subscriber**, in contrast, **does not scale processing** but it allows you to **broadcast each message** to a list of subscribers, enabling the capacity to connect new client applications to the same data source. 

Kafka offers a mix of those two messaging models: **Kafka** publishes messages in topics that **broadcast** all the **messages to** different **consumer groups**. The **consumer group acts** as a **message queue** that **divides** up to **processing** over all the members of a group.

### Use cases

#### Companies and Applications using Kafka

Kafka is being used in many different application domains. Here are some of them:

- **Real-time web and log analytics:** How the web application performs and how the users interact with it, e.g.: [Sematext](https://sematext.com/)
- **Messaging:** Some companies use Kafka as a buffer to communicate different applications, e.g.: [Helprace](https://helprace.com/help-desk)
- **Transaction and event sourcing:** Gathering transactions from multiple data sources to maintain the consistency and traceability of such transactions, i.e.: [Confluent](https://www.confluent.io/blog/event-sourcing-cqrs-stream-processing-apache-kafka-whats-connection/)
- **Decoupled microservices:** Popular data store for microservices, e.g.: [Event Streams for IBM Cloud](https://www.ibm.com/cloud/event-streams-for-cloud)
- **Streaming ETL:** Ingest and transform data to deliver info to other systems in _real time_, e.g.: [Spongecell](https://www.spongecell.com/about) 

Some other companies using Kafka: 

![kafka-APIs](./img/08-usecase-static.png)

![kafka-APIs](img/09-usecase-realtime.gif)

Here is a brief description of a few popular use cases for Apache Kafka:

- **Website Activity Tracking**: The original use case for Kafka was to be able to rebuild a user activity tracking as a set of real-time pub-sub feeds.
- **Messaging**: In comparison to most messaging systems, Kafka has a better throughput, replication, and fault-tolerance which makes it a good solution for large scale message processing applications. Here, Kafka is comparable to other messaging systems such as [RabbitMQ](https://www.rabbitmq.com/). 
- **Metrics**: Often, Kafka is used for operational monitoring data, involving aggregating statistics from distributed applications to generate centralized feeds of operational data.
- **Log Aggregation**: Log aggregation typically collects physical log files off servers and puts them in a central place for processing. Kafka gives a cleaner abstraction of log or event data as a stream of messages, allowing lower-latency processing and easier support.
- **Stream Processing**: Kafka performs a series of operations to transform and process data to feed other systems or to be further processed.
- **Event Sourcing**: Event sourcing is a style of application design where state changes are logged as a time-ordered sequence of records. Kafka's support for very large stored logs makes it an excellent backend.
- **Commit Log**: Kafka can work as an external commit-log for distributed systems. The logs help to replicate data between nodes and acts as a re-synchronization method for failed nodes, in order to restore their data.


Source: [Kafka Uses](https://kafka.apache.org/uses),  [The Log](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)

Nevertheless, deploying and managing a distributed system is an activity that requires expertise, mainly in Big Data systems, where the amount of data and numerous services have to interact together to serve millions of requests. [Narkhede](https://www.indeed.com/prime/resources/talent/12-things-you-need-to-know-about-kafka-in-the-cloud) expressed _that deploying clusters, managing schemas and data pipelines, maintaining visibility into end-to-end monitoring, and load balancing data requires the skills of an Site Reliability Engineer who has a deep understanding of both distributed systems and Kafka. There is a huge industry-wide trend to move to managed services, to move away from the business of buying machines and hiring these expensive hard to find people to manage these services and instead focus on the application business logic_.

Precisely there lays the importance of cloud computing services as MSK. Companies contract third-parties to manage complex processes that require highly skilled professionals.

## Amazon Managed Streaming for Kafka

### Introduction
Amazon MSK is a fully managed service that makes it easy for you to build and run applications that use Apache Kafka to process streaming data ([MSK Documentation](https://docs.aws.amazon.com/msk/latest/developerguide/what-is-msk.html))

The following diagram provides an overview of how Amazon MSK works and one of the typical architectures:

![msk-architecture](./img/11-msk-architecture-visio.png)

### Benefits
The advantage of MSK is having all the capacities of Kafka integrated and managed as the other Amazon Web Services. It is then possible to use the AWS Command Line Interface ([AWS CLI](https://aws.amazon.com/cli/)) or the APIs in the SDK to perform control-plane operations. For example, you can use the AWS CLI or the SDK to create or delete an Amazon MSK cluster, list all the clusters in an account, or view the properties of a cluster.

MSK promise the advantages that are in general offer by Amazon's cloud computing services: 
> Amazon Managed Streaming for Kafka **makes it easy** for you to **build and run production applications on Apache Kafka without needing** Apache Kafka infrastructure **management expertise**. That means you spend less time managing infrastructure and more time building applications.

### Creating a Kafka cluster with MSK

The main advantage of MSK is the facility it provides to configure and operate Kafka. You can verify it following the _getting started_ in the [official documentation](https://docs.aws.amazon.com/msk/latest/developerguide/what-is-msk.html). Basically, you must consider the following steps: 

1. **Create a VPC** - First you configure a logically isolated section of Amazon Web Services Cloud creating a Virtual Private Cloud.
2. **Enable High Availability and Fault Tolerance** - Here you specify subnets  in different availability zones in order to have high availability and increase fault tolerance
3. **Create a Cluster** Then, using a configuration file you create the cluster in the network built in step 2.
4. **Create a Client Machine** - Now you can configure the client to access the cluster. You will have to configure the proper security groups so the cluster accepts info originated in the client machine.
5. **Create a Topic** - From the client machine you access the cluster to manage topics, partitions, replication, etc.
6. **Produce and Consume Data** - Finally, you use the APIs to produce and consume data from the cluster. Here is the example of following the mentioned tutorial:

![producer-consumer](./img/12-producer-consumer.gif)

From this point, you can configure your cluster to integrate other services of AWS like DynamoDB and so on.

When creating and configuring the Kafka cluster it is recommended to be really careful while copying the IDs of the different components. In the same way, make sure to set the security groups correctly, most errors come from not having the client machine as a safe source of information in the Kafka.

## Best practices MSK

The best practices described here are based in experiences running and operating large-scale Kafka clusters on Amazon Web Services. This post intends to help AWS customers currently working and running Kafka on AWS, and also, for those customers who are considering migrating on-premises Kafka deployment to AWS.

Running Kafka on Amazon EC2 provides a **high-performance**, **scalable solutions** and many **different instance types and storage options** combinations for Kafka deployments. However, since there are a lot of possible deployment topologies, **it's not always trivial to select the most appropriate strategy for a specific use case**.

Here we try to cover some aspects of running Kafka clusters on AWS:

* Deployment considerations and patterns
* Storage options
* Instance Types
* Networking
* Upgrades
* Performance tuning
* Monitoring
* Security
* Backup and restoration

### Deployment considerations and patterns

To begin with, it is really important to have in consideration some things like the **Availability**, (i.e: in which zones a Kafka cluster is deployed), the **Consistency** of the data and the **Overhead** of deployment.

There are multiple available configuration patterns, for example, a single AWS Region with three availability zones where each one has a Kafka cluster, just like the picture below shows:


![Kafka-Pattern1](./img/13-KafkaPattern.png)

|     Pros    |     Cons    |
|:-----------:|:-----------:|
| High availability | High overhead (one change is deployed multiple times) |
| Fault tolerant | Tedious to maintain and monitor |
| Data evenly distributed |
| Simple deployment |

Another configuration is, for example, a single AWS Region with three availability zones with a Kafka cluster in standby, to be able to switch between clusters if the first one fails.

![Kafka-Pattern2](./img/14-KafkaPattern.png)

|     Pros    |     Cons    |
|:-----------:|:-----------:|
| Unique Kafka cluster | High latency when switching |
| Fault tolerant | Messages can be lost during a switch |

As a recommendation, the first option is better, because a failed Availability Zone won't cause Kafka downtime.

### Storage

There are two options for file storage in Amazon EC2, each one with its own pros and cons:

|  Ephemeral (EC2 instance)  |     EBS (Elastic Block Store)     |
|:-----------:|:-----------:|
| High IOPS | Higher resiliency |
| Recommended for large and medium-sized Kafka Clusters because of its recovery time | Configurable IOPS based on storage needs |
|  | Data persistence even if an instance failure or termination occurs |

### Instance types

In AWS there are a lot of types of instances to choose, but normally the selected type depends on the storage required for the application on a Kafka cluster.

It's always a best practice to check the [lastest changes](https://aws.amazon.com/ec2/instance-types/) in instance types.

### Networking

A fast, reliable and fault-tolerant network have always an important role in distributed systems like Kafka. For that reason, the expected network throughput combined with the disk storage is often the governing factor for cluster sizing.

To be able to communicate with some elements from Kafka, it is recommended to select an option that keeps inter-clustering traffic on the private subnet.

### Upgrades

Be careful when upgrading Kafka, you should keep the producer and the consumer clients on a version equal to or lower than the version you are upgrading from.

There are three types of updates, **Rolling or in-place upgrade**, **Downtime upgrade** and **Blue/Green Upgrade**

### Performance Tunning

You can tune Kafka performances in multiple ways. For example, in a case where throughput is less than the network capacity, we can try adding more threads, or increasing the batch size, or adding more producers or partitions.

### Monitoring

Knowing if a Kafka cluster is working correctly is critical. For monitoring, we can use some tools, like Newrelec, Wavefront, Amazon CloudWatch or AWS CloudTrial.

It is recommended to monitor **CPU load**, **Network Metrics**, **Disk Space**, **Disk IO Performance**, etc as a system metrics.

### Security 

Kafka provides mechanisms to transfer data with relatively high security across components involved. Some of these security implementations can be found [here](http://kafka.apache.org/documentation.html#security).


### Backup and Restoration

To be able to restore and backup our data, setting a second cluster and replicate messages is the best way. In case you are using EBS-based deployment, there is an option that enables automatic snapshots of EBS volumes.

Source: [AWS, Best Practices for Running Kafka](https://aws.amazon.com/es/blogs/big-data/best-practices-for-running-apache-kafka-on-aws/#).

we can find best practices related to more internal components of Kafka.
 
## Conclusion

In this report, we have described the foundations of Kafka and MSK architecture on Amazon Web Services, and some of the best practices to be used during the deployment and maintenance of MSK. Using Kafka we can improve some applications (e.g.: Machine Learning Algorithms) that previously had to obtain the data from logs, by using streaming data as an input to train an initial model with the first data arrived and then, using subsequent streams of data to continuously learn from it. With this new model, it is possible on one hand, to invest less time to train an algorithm and on the other hand, it is possible to have a model trained with data "on-real time".

In the end, we can say with certainty that MSK has the potential to become a great tool for the Data Science field.

## Sources and further readings

* [Fowler - What do you mean by _Event-Driven'_](https://martinfowler.com/articles/201701-event-driven.html)

* [Apache Kafka Documentation](https://kafka.apache.org/intro)
* [Data Artisans, 2017. Apache Flink. Data Artisans](https://data-artisans.com/) 
* [What is Streaming Data? – Amazon Web Services](https://aws.amazon.com/streaming-data/)
* [Apache Kafka Best Practices, Product Updates & More. Confluent.](https://www.confluent.io/blog/) 
* [Helland, P., 2015. Immutability Changes Everything](http://cidrdb.org/cidr2015/Papers/CIDR15_Paper16.pdf)
* [Netflix Technology Blog](https://medium.com/netflix-techblog/evolution-of-the-netflix-data-pipeline-da246ca36905)
* [Narkhede, N., Shapira, G. & Palino, T., 2017. Kafka: The Definitive Guide](https://www.amazon.com/Kafka-Definitive-Real-Time-Stream-Processing/dp/1491936169)
* [12 Things You Need to Know About Kafka in the Cloud](https://www.indeed.com/prime/resources/talent/12-things-you-need-to-know-about-kafka-in-the-cloud)
* [Kafka in the Cloud (Podcast)](https://softwareengineeringdaily.com/2017/07/10/kafka-in-the-cloud-with-neha-narkhede/)

