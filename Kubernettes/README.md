# Research Project : Kubernetes (K8s)

### Table of Contents
1. [Introduction](#introduction)
2. [Why we need containers in first place?](#why-we-need-containers-in-first-place)
3. [Which is the trending technology in containers?](#which-is-the-trending-technology-in-containers)
4. [What is need of Container Orchestration?](#what-is-the-need-of-container-orchestration)
5. [Kubernetes](#kubernetes)
   * [What is Kubernetes?](#what-is-kubernetes)
   * [Need of Kubernetes](#need-of-kubernetes)
   * [Successful use cases](#successful-use-cases)
6. [Architecture](#architecture)
7. [Design](#design)
8. [Competitors](#competitors)
9. [Conclusion](#conclusion)
10. [References](#references)

### Introduction
****
We live in an era where companies have started to shift from a monolithic architecture where a monolith does everything in favour of having smaller teams focused on building smaller, limited purpose software elements called Microservices.
The Microservices architecture is way to design distributed systems on the web wherein independent business functionalities are incapsulated in small services.
Teams around the world have ditched their clumsy monoliths in favor of loosely coupled, manageable, and independently deployable microservices.

This paradigm shift has brought with its own set of complexities like more resource allocation to services, increased operational overhead, requiring a high degree of automation, orchestration, to name a few.
Before cloud computing came of age, a microservice would be deployed on physical hardware running on an OS. As more and more companies began to create their applications on the cloud
or migrate their application the cloud, the next obvious choice was Virtual machines(VM). But VM's come at a cost of their own, like slower loading times, bloated size, difficulty in shipping from one machine to another etc.

However, the best choice for running a microservices is application containers. Containers offer a lightweight runtime environment for applications,
presenting a software environment that can follow the application from the developer's desktop to testing to final production deployment by abstract away the specifics of the underlying operating system and hardware.

A small set of services with a few containers are not that difficult to manage. However, for companies that have a 1000 containers and 200 services, managing the containers across hosts becomes
a challenge in and of its own. There is where container orchestration comes in. Container orchestration is all about managing the lifecycles of containers, especially in large, dynamic environments
Container orchestration and its need<sup>[7]</sup>. Teams can use container orchestration for a variety of tasks like load balancing between allocation of resources between containers,
service discovery, health monitoring of containers, provisioning of containers etc.

In this report, we explore Kubernetes, an open source container orchestration system. We will focus on the need for container orchestration and how Kubernetes help solve that problem,
architecture, its competitors and its use cases in the industry

### Why we need containers in first place?
****
Storing and running applications were very inefficient before the introduction of containers. The developers used to run service and applications on different machines which was very in-efficent and costly method. Then, came the virtualization which changed the way applications share the same global resource of one machine but have their own local resources setup in their own virtual machines.

With virtualization technology, the package that can be passed around is a virtual machine, and it includes an entire operating system as well as the application. A physical server running three virtual machines would have a hypervisor and three separate operating systems running on top of it. But, virtualization or setting up different Virtual Machine's for different applciations have it's own drawbacks. VMs take a lot of time to boot and cannot be deployed easily to public cloud if there are 100s of them.​
See the below image to see how applications were used to be deployed before container technology.

**Benefits of Virtual Machines**
* All OS resources available to apps.
* Established management tools.
* Established security tools
* Better known security controls

![alt text][appsvsvms]

Now, with the advancement in technology and need of deploying thousands or millions of independent services and applications on regular basis there arise a need of light-weight, scalable, efficiently manageable and flexible solution. This problem gave rise to what is known as breaking down the large chunk of services into micro-services and deploying them as independent services through containers which can behave independently on their own yet can make use of common resources on the server on which they are deployed.

Containers<sup>[1]</sup> are a solution to the problem of how to get software to run reliably when moved from one computing environment to another. This could be from a developer's laptop to a test environment, from a staging environment into production, and perhaps from a physical machine in a data center to a virtual machine in a private or public cloud.

**Benefits of Containers**
* Reduced IT management resources.
* Reduced size of snapshots.
* Quicker spinning up apps.
* Reduced & simplified security updates.
* Less code to transfer, migrate, upload workloads.

![alt text][vmsvscontainers]

### Which is the trending technology in containers?
****
Docker<sup>[2]</sup> by far has outperformed all the container shipping technologies with his market and easy of use. Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package. By doing so, thanks to the container, the developer can rest assured that the application will run on any other Linux machine regardless of any customized settings that machine might have that could differ from the machine used for writing and testing the code.

In a way, Docker is a bit like a virtual machine. But unlike a virtual machine, rather than creating a whole virtual operating system, Docker allows applications to use the same Linux kernel as the system that they're running on and only requires applications be shipped with things not already running on the host computer. This gives a significant performance boost and reduces the size of the application.
The Docker Enterprise container platform delivers immediate value to your business by reducing the infrastructure and maintenance costs of supporting your existing application portfolio while accelerating your time to market for new solutions.

**Docker Statistics & Facts**
* According to the survey by Datadog, at the beginning of April 2018, 23.4 percent of Datadog customers had adopted Docker, up from 20.3 percent one year earlier. Since 2015, the share of customers running Docker has grown at a rate of about 3 to 5 points per year.<sup>[3]</sup>

![alt text][dockeradoption]

* 2/3 of companies that try using Docker, adopt it. Most companies who will adopt have already done so within 30 days of initial production usage, and almost all the remaining adopters convert within 60 days.

* Docker adoption is up more than 25% in the last year especially big companies like ING, Paypal, ADP, Spotify etc.

### What is the need of Container Orchestration?
****
Containers let us deploy the code efficiently and run independently but the scalability and management of all these containers is still a big problem.
If you have ten containers and four applications, it’s not that difficult to manage the deployment and maintenance of your containers. If, on the other hand, you have 1,000 containers and 400 services, management gets much more complicated. When you’re operating at scale, container orchestration—automating the deployment, management, scaling, networking, and availability of your containers—becomes essential.

For container orchestration we have a lot of different tools but, the one that is leading the market and integrates very well with the docker containers is **Kubernetes**.

### Kubernetes
#### What is Kubernetes?
****

Kubernetes or K8s is an open source platform that automates Linux container operations. It eliminates many of the manual processes that are needed for deploying, scaling and maintaining containerized objects.

Kubernetes was originally developed and designed by engineers at Google for their internal services which all runs in containers. [Google's cloud services](https://speakerdeck.com/jbeda/containers-at-scale?slide=18) are mostly based on containers and more than 2 billion container deployment take place at Google itself within a week. Google open-sourced the kubernetes project in 2014 and released the v1.0 on July, 2015. From there on, Google donated the project to [Cloud Native Computing Foundation](https://en.wikipedia.org/wiki/Linux_Foundation#Cloud_Native_Computing_Foundation) which now maintains it for distribution.

The Kubernetes project is highly influenced by it's predecessor, Google's [Borg](https://ai.google/research/pubs/pub43438) system. The original Borg project was written entirely in C++, but the rewritten Kubernetes system is implemented in Go language<sup>[4]</sup>. The seven spokes in the Kubernetes logo refer to the project's original name, ["Project Seven of Nine."](https://cloud.google.com/blog/products/gcp/from-google-to-the-world-the-kubernetes-origin-story)

![alt text][logo]


#### Need of Kubernetes
****

Kubernetes has a number of features and gives you the orchestration and management capabilities required to deploy containers, at scale, for these workloads. Real production apps span multiple containers and these containers need to communicate to each other in secure environment which can be spread across multiple host servers.

Kubernetes features can be as follows:
 * a container platform
 * a microservices platform
 * a portable cloud platform
 * an orchestration platform to deliver, scale and manage containers
 * control and automate application deployments and updates
 * Health-check and self-heal your app with autoplacement, autorestart, autoreplication and autoscaling.

Kubernetes need to integrate with networking, storage, security, telemetry and other services to provide a comprehensive container infrastructure<sup>[5]</sup>.

![alt text][need]

Kubernetes through it's container-centric approach fixes a lot of common problems by sorting containers into a **pod**. Pods add a layer of abstraction to grouped containers, which helps to schedule workloads and provide necessary services like, networking and storage to those containers.

### Successful use cases
****
Kubernetes has a wide adoption across different industry verticles. Many of its adopters are big companies that rely on the robustness provided by Kuberenetes for its operations. We discuss some these use cases<sup>[6]</sup>:

**Adform**

*The team, which had already been using Prometheus for monitoring, embraced Kubernetes and cloud native practices in 2017. "To start our Kubernetes journey, we had to adapt all our software, so we had to choose newer frameworks," says Apšega. "We also adopted the microservices way, so observability is much better because you can inspect the bug or the services separately."*

**Zolando**

*The company now runs its Docker containers on AWS using Kubernetes orchestration. With the old infrastructure "it was difficult to properly embrace new technologies, and DevOps teams were considered to be a bottleneck," says Jacobs. "Now, with this cloud infrastructure, they have this packaging format, which can contain anything that runs on the Linux kernel. This makes a lot of people pretty happy. The engineers love autonomy."*

**The New York Times**

*Speed of delivery increased. Some of the legacy VM-based deployments took 45 minutes; with Kubernetes, that time was "just a few seconds to a couple of minutes," says Engineering Manager Brian Balser. Adds Li: "Teams that used to deploy on weekly schedules or had to coordinate schedules with the infrastructure team now deploy their updates independently, and can do it daily when necessary." Adopting Cloud Native Computing Foundation technologies allows for a more unified approach to deployment across the engineering staff, and portability for the company.*

**ING Bank**

*Using Kubernetes for container orchestration and Docker for containerization, the ING team began building an internal public cloud for its CI/CD pipeline and green-field applications. The pipeline, which has been built on Mesos Marathon, will be migrated onto Kubernetes. The bank-account management app Yolt in the U.K. (and soon France and Italy) market already is live hosted on a Kubernetes framework. At least two greenfield projects currently on the Kubernetes framework will be going into production later this year. By the end of 2018, the company plans to have converted a number of APIs used in the banking customer experience to cloud native APIs and host these on the Kubernetes-based platform.*

### Architecture
****

Like most distributed computing platforms, a Kubernetes cluster consists of at least one master d multiple worker nodes. The master is responsible for exposing the APIs, scheduling the deployments and managing the overall cluster. Each network node, runs a container runtime like docker, along with an agent that communicates with the master node.<sup>[7]</sup> Nodes can be Virtual Machines (VMs), running in a cloud or servers running with a data center
<sup>[8]</sup>.

![alt text][architecture]

**Master components**

Master components provide the cluster's control panel. They make global decisions about the cluster, and detecting and responding to cluster events.

* API server: It exposes Kubernetes API, and is the front-end of the Kubernetes control panel. API server implements an interface, which means different services and tools can communciate with Kubernetes.

* Scheduler: It is one of the key components of master node. It is responsible for workload utilization and allocation pod/resources to new node.

* Controller Manager: It is responsible for running controllers. There are 4 different kinds of controllers,
Node controller, replication controller, endpoints controller, Service account and token controllers.

* [etcd](https://coreos.com/etcd/): Consistent and highly-available key value store used as Kubernetes backing store for all cluster data.

**Node components**

Node components run on every node, maintaining running pods and providing Kubernetes running environment.

* kubelet: This service runs on each node and read the container manifests and ensure the defined containers are started and running.

* kube-proxy: The kube-proxy is an implementation of a network proxy and load balancer. It is responsible for routing traffic to the appropriate container based on IP and port number of the incoming request.

* Pod: A group of one or more containers deployed to a single node. All containers in a pod share an IP Address, hostname and other resources.

To better understand the architecture and various kubernetes objects there is a youtube video by IBM Cloud engineer, which enumerates the whole process of Kubernetes in a very simple and concise way.

[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/aSrqRSk43lY/0.jpg)](http://www.youtube.com/watch?v=aSrqRSk43lY)

**Kubernetes object**
A Kubernetes object is a “record of intent”<sup>[9]</sup>. A Kubernetes object specifies what containers are running node, their configuration policies, and the resources available to those containers.
A Kuberenetes object contains two nested objects, called *object spec* and *object status*. The spec contains the configurations and characteristics that you want the object to have,
the status describes the status of the object which is continually updated by the Kuberenetes system.

### Design
****

**Deployments**

To deploy containerized applications, a _Kubernetes configuration_ has to be created. The role of a deployment can be understood as follows :

* It instructs Kubernetes on how to create and update instances

* Once The deployment is done, the Kubernetes master schedules instances onto nodes

* Once the instances are up and running,a Kubernetes Deployment Controller monitors these instances

* If the Node hosting an instance goes down or is deleted, the Deployment controller replaces the instance with an instance on another Node in the cluster

Let's see how Kubernetes will manage the lifecyle of a redis server packaged in a docker container hosted on Dockerhub. The deployment is configured in a YAML as follows :
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis-deployment
  labels:
    app: redis
spec:
  replicas: 2
  selector:
    matchLabels:
      app: redis
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: redis
        image: redis
        ports:
        - containerPort: 6379
```

This deployment will :

* Have name _redis-deployment_

* Created 2 replicated pods

* The selector field defines how the Deployment finds which Pods to manage, as given by matchLabels. In this example, this deployment will manage all Pods that have named redis

* The .template.spec specifies the containers being run. In our case, we run a the docker image of redis available at Dockerhub, and we name the container redis

To get the number of deployments, simply execute the command ```kubectl get deployments```

**Configurations**

To get a list of all Pods currently running, the command ```kubectl get pods``` needs to be executed. To view the containers running inside the pods, use the command ```kubectl describe pods```.

### Competitors
****

When we talk about container orchestration tools, Kubernetes has become the de facto technology with the highest market share and reliability by various software market leading companies like, Amazon, RedHat etc. Still there exist some competitors in the market which are listed down below, comparing the pros/cons with Kubernetes<sup>[10]</sup>.

**Apache Mesos**

[Apache Mesos](http://mesos.apache.org/) is built using the same principles as Linux kernel, only at a very different level of abstraction. The mesos kernel runs on every machine and provide applications with APIs for resource management and scheduling across entire datacenter and cloud environemnts.</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **-** More expensive </br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **+** Easier to set up.

**Docker Swarm**

[Docker Swarm](https://docs.docker.com/get-started/part4/) is an open source container orchestration platform and is native clustering system by Docker which is the leading de facto for creating and distributing containers. It turns a pool of docker hosts into a single, virtual Docket host.</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **-** More expensive </br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **+** Integrates very well with the whole docker container ecosystem.  

**Azure Container Instances**

[Azure Container Instances](https://azure.microsoft.com/en-us/services/container-instances/) makes it easy to create and manage Docker container in Azure, without having to provision virtual machines or adopt a higher level service.</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **-**  Cannot be used for cloud services other than Azure.</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **+** More usable and better integrated with Azure ecosystem. Fast startups time.

The most relevant one is Docker Swarm but, Kubernetes outperforms Docker Swarm's efforts to manage a machine cluster from a single Docker API.
Kubernetes is clearly one of the most interesting ones, and that's why a lot of vendors are integrating it in its products instead of using Docker Swarm. Moreover, it comes in an open-source free version or with production support releases.


### Conclusion
****
In this report, we have given a brief introduction about the market leading tool for container orchestration called Kubernetes or K8s. We have explored the need of container orchestration, what all tools exist that help us solve this problem of managing containers, and  what does Kubernetes do differently to make it the most state-of-art technology in this domain. We have also stated the most popular use cases of Kubernetes to better understand, in which case Kubernetes actually helps to provide efficiency to the project. These use cases are from some of the world-known companies to manage their resources in production systems.

This project has helped us in better understanding the overall architecture and design of Kubernetes and what power it brings to the infrastructure and management of micro-services deployed as containers. We hope to further enhance this knowledge by using the technology in our future projects or companies and hope this report helps the reader to give brief idea about the technology and empower them to choose weather to use this technology or not in case needed.


### References
****
1. https://www.cio.com/article/2924995/what-are-containers-and-why-do-you-need-them.html
2.  https://www.docker.com/
3.  https://www.datadoghq.com/docker-adoption/
4.  https://en.wikipedia.org/wiki/Kubernetes#cite_note-borg_paper-8
5. https://www.redhat.com/en/topics/containers/what-is-kubernetes
6. https://kubernetes.io/case-studies/
7. https://kubernetes.io/docs/concepts/overview/components/
8. https://www.tutorialspoint.com/kubernetes/kubernetes_architecture.htm
9. https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/
10. https://www.g2.com/products/kubernetes/competitors/alternatives
11. https://techbeacon.com/app-dev-testing/3-reasons-why-you-should-always-run-microservices-apps-containers
12.  https://blog.newrelic.com/engineering/container-orchestration-explained/

[1]:
https://www.cio.com/article/2924995/what-are-containers-and-why-do-you-need-them.html
[2]: https://www.docker.com/
[3]: https://www.datadoghq.com/docker-adoption/
[4]: https://en.wikipedia.org/wiki/Kubernetes#cite_note-borg_paper-8
[5]:
https://www.redhat.com/en/topics/containers/what-is-kubernetes
[6]: https://kubernetes.io/case-studies/
[7]:  
https://kubernetes.io/docs/concepts/overview/components/
[8]: https://www.tutorialspoint.com/kubernetes/kubernetes_architecture.htm
[9]: https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/
[10]: https://www.g2.com/products/kubernetes/competitors/alternatives
[11]: https://techbeacon.com/app-dev-testing/3-reasons-why-you-should-always-run-microservices-apps-containers
[12]: https://blog.newrelic.com/engineering/container-orchestration-explained/

[logo]: figures/Kubernetes-logo.png
[need]: figures/need-kubernetes-diagram.png
[architecture]: figures/kubernetes-architecture.png
[appsvsvms]: figures/AppsVSvms.png
[vmsvscontainers]: figures/Containers_vs_Vms.png
[dockeradoption]: figures/docker-adoption.png
