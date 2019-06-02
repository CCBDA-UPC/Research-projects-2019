# Research Project: Data Portability

## Data Portability. Background.

Data portability is a concept that allows users to freely move their data from one service to another, instead of maintaining data locked into the service vendor. Data portability requires the data to be stored in a standard way to facilitate the transfer from one data controller to another [1].

The concept of data portability allows users to choose products and services based on choice, rather than being locked in, helps drive innovation and facilitates competition [8]. This challenge has also been addressed by the European Interoperability Framework (EIF) where is recommended to ensure data portability to support the implementation and evolution of European public services without unjustified restrictions. Data portability is one of the principles for driving interoperability [9].

Interoperability is a characteristic of a product or system, whose interfaces are completely understood, to work with other products or systems, at present or in the future, in either implementation or access, without any restrictions [2]. If two or more systems are capable of communicating with each other, they exhibit syntactic interoperability when using specified data formats and communication protocols [2].

Beyond the ability of two or more computer systems to exchange information, semantic interoperability is the ability to automatically interpret the information exchanged meaningfully and accurately in order to produce useful results as defined by the end users of both systems. To achieve semantic interoperability, both sides must refer to a common information exchange reference model [2].

Not only advantages for the users are pursued with data portability and interoperability, moreover lack or inadequate interoperability may lead to high cost and even to market monopolization or market failures [2].

The relevance of interoperability and data portability is backed by the General Data Protection Regulation (GDPR) [3], and there are several companies and institutions working on different approaches to support their implementation (Google, Microsoft, MIT, among others) [7][8].

## Data portability backed by GDPR.

The GDPR states at the first point in Article 20 that “The data subject shall have the right to receive the personal data concerning him or her, which he or she has provided to a controller, in a structured, commonly used and machine-readable format and have the right to transmit those data to another controller“. Moreover, in the second point, is written that the data subject shall have the right to have the personal data transmitted directly from one controller to another, where technically feasible [3]. 
The right to data portability in GDPR will apply to data processors, whether inside or outside the EU, if they process data on individuals who are physically located within an EU member state [3].

## Work in development. 

### Personal Information Management Systems (PIMS).

PIMS, also referred to as Personal Data Stores (PDS) or Personal Data Spaces are systems that allow people to gather, store, update, and share personal data [5]. They are intermediary services allowing users to control what they share with third parties. PIMS envision their users as data suppliers instead of passive objects of data extraction [6]. 

By putting personal data in the hands of individuals, PIMS can facilitate compliance with users rights to access their individual data and a business’s obligation to ensure the data is up to date and accurate. PIMS makes information a tool for the individual and helps individuals manage their relationships with many organizations [5].

PIMS can be classified into two categories regarding their storage architecture: a local storage model or a cloud-based storage model. Under the local model, information is kept in users’ devices (laptops, smartphones), while in a cloud-based model, information is stored in one or several service providers. Regardless of technical architecture, personal data needs to be stored in an encrypted, interoperable, machine-readable format that can enable interactions without human assistance [5].

The core function of any PIMS is consent management, where user’s preferences are matched with requests for personal data. For example, PIMS that implement blockchain and smart contract functionality can facilitate data protection by confirming a user meets an age requirement rather than providing the user’s date of birth. Another example would be an assistance program that distributes relief based on sexual orientation. PIMS could confirm that an individual meets the specific requirements for eligibility, while protecting the individual from retribution or discrimination because the individual’s identity is kept secret [5].

#### OpenPDS.

OpenPDS is a PDS project developed in MIT. OpenPDS use a concept called SafeAnswers, which allows applications to ask questions that will be answered using the user's personal data. Requester applications will send code to be run against the data and the answer will be send back to them. In this way, openPDS/SafeAnswers turns a very hard anonymization problem to an easier security problem [7].

OpenPDS/SafeAnswers allows users to collect, store, and give fine-grained access to their data, while protecting their privacy. According to OpenPDS, given the huge number of data sources that a user interacts with on a daily basis, interoperability is not enough to provide the user with awareness regarding what and how his data is collected and shared. Rather, the user needs to actually own a secured space, a Personal Data Store (PDS) acting as a centralized location where the user can truly control the flow of data and manage fine-grained authorizations for accessing his data [7].

With SafeAnswers, generic computations on user data are performed in the safe environment of the PDS, under the control of the user: the user does not have to hand data over to receive a service. Only the answers (summarized data  necessary for the service or  app) leave the boundaries of the user’s PDS [7]. The OpenPDS architecture can be seen in the next figure: 
![](1.png?raw=true "Open PDS architecture. Taken from [7]")


## Google Data Transfer Project (GDTP).

Data Transfer Project (DTP) is an open source initiative to encourage participation of as many Providers as possible to allow Individuals easily transfer their files and data directly between online service providers. Current contributors include: Google, Facebook, Microsoft and Twitter [8]. 

DTP extends data portability beyond downloading a copy of your data from your service provider, to providing consumers the ability to directly transfer data in and out of any participating provider [8].

The DTP consists of Adapters that convert proprietary formats data into a group of standard Data Models. This allows data transfer between any two providers using the provider’s existing authorization mechanism, and allows each provider to maintain control over the security of their service. This also allows to attract new clients to companies or get a user base for new products or services by supporting and maintaining the ability to easily import and export a user’s data [8].

In most cases, the customer will authenticate their existing account with both parties within the receiving provider. The users won’t need to see the DTP infrastructure as part of the process. Once a user has verified that the desired data is migrated, he would have the possibility to delete their data from their original service using the service’s deletion tool [8].

In the next figure, a Google Photos user wants to move their photos from Google to Microsoft OneDrive. They go to Google’s file transfer interface, choose the destination, and hit ‘send.’ They then must authorize the transfer using both services’ chosen methods, in this case OAuth. The selected files are automatically copied and routed to the destination, without using either bandwidth or hardware of the user [8].

![](2.png?raw=true "DTP export example. Taken from [8]")

While anyone can contribute Adapters to the DTP, each Hosting Entity decides which providers they will interact with. Each Hosting Entity determines which providers to request API keys from, and each provider chooses which Hosting Entity they grant API keys to [8].

### System Components.

As noted above, the system comprises three main components: 

* Data Models are a common format for transferring data between two adapters, they establish a common understanding of how to transfer data. Each provider only has to build and maintain an API that supports the DTP Data Models, which are based on standard formats. The representation of the data exchange idea is shown in the next figure [8].

![](3.png?raw=true "Data exchange with DTP. Taken from [8]")

* Adapters provide a method for converting each provider’s proprietary data and authentication formats into a form that is usable by the system. Data Adapters are pieces of code that translate a given provider’s APIs into Data Models used by the DTP. Data Adapters consist in two parts: an exporter that translates from the provider’s API into the Data Model, and an importer that translates from the Data Model into the provider’s API. Authentication Adapters are pieces of code that allow users to authenticate their accounts before transferring data out of or into another provider, DTP is agnostic to the type of authentication [8].

![](4.png?raw=true "Adapters example. Taken from [8]")

* Task Management.
The Task Management Libraries handle background tasks, such as calls between the two relevant Adapters, secure data storage, retry logic, rate limiting, pagination management, failure handling, and individual notifications [8].

### Deployment Models.

There are three deployment models for deploying a Host Platform of the DTP, they are: distributed, centralized, and self-managed. 

* Distributed: In a distributed hosting model, the user can choose to initiate the transfer operation from the source or the destination of the transfer. In this case, both providers run the Host Platform. The advantage with this model is that the data is not handled out to a third party, it is only managed by the two members of the operation. The disadvantage is that this model limits transfers among providers that are running Host Platforms, and  also the overhead caused for the maintenance of a separate Host Platform by every provider Example: Google and Microsoft are both running Host Platforms. If a user goes to the Microsoft UI and initiates an import from Google, they would use the Host Platform run by Microsoft [8].

![](5.png?raw=true "Distributed DTP model. Taken from [8]")

* Centralized: In a centralized system, an independent third-party is the Hosting Entity, this entity can handle request to perform transfers to and from any provider. With this approach, companies that do not run a Host Platform can still be part of the DTP as long as they implement the corresponding adapter. On the other hand, this requires that the centralized third-party be both trustworthy and highly skilled in data protection [8].

* Self-managed: In a self-managed environment, a user can download and run a copy of the DTP and have full control of the transfer job. For example, users could transfer their data between providers with end-to-end encryption and not have to upload or share their private keys. With this model, even if a provider stops running a Host Platform, the user would still be able to to make the transfer to and from this provider. The disadvantage is that running a Host Platform could turn to be too complex or resource intensive [8].

### Security and privacy.

Responsibility is shared among all the participants. Here are some of the responsibilities and leading practices that contribute to the security and privacy of the DTP [8].
* Data minimization: the receiving provider should only process and retain the minimum set of data for the individual that is needed to provide their service. The sending provider should provide all needed information, but no more.
* User notifications: The Hosting Entity should configure their Host Platform to notify the user that a data transfer has been initiated by the user.  The Hosting Entity should consider delaying the start of the transfer so that the user has the opportunity to cancel the transfer after receiving the notification.
* Rate Limiting: rate limiting the number and frequency of transfers for a given user. This approach can help limit the impact of an account compromise. Hosting Entities should evaluate the sensitivity of the data, as well as known and possible attacks, when determining the appropriate rate limiting.
* Token Revocation: Providers should support token revocation through their API, since the DTP will attempt to revoke the authorization tokens used for the transfer when it is finished. With this approach if a token is leaked, only the current transfer will be potentially affected.
* Minimal Scopes:  the token provider should scope the auth tokens only for the data that will be affected by the transfer, in this way transparency is ensured and also the risk in case the token get stolen comprises only the set of data used during the transfer.
* Data retention The DTP stores data only for the duration of the transfer job. Also, all data passing through the system is encrypted both at rest and in transit. Specifically, all data stored at rest is encrypted with a per-user session key that is created and stored in memory of the ephemeral virtual machine that is used to process a single user’s job. The Hosting Entity and provider are responsible for ensuring that any stored aggregated statistics maintain user privacy.

### Ecosystem Issues

* Project Governance: The  DTP project needs to continue growing and become more  mature in order to become a neutral governance body to be able to advocate for the program, manage the open source repository, take car of the security and privacy best practices, etc [8].

* Inconsistent API Landscape: obstacles regarding restriction on how APIs can be used, lack of open APIs, lack of support or maintenance of the APIs [8]. 

* Reciprocity: Providers that may not allow equivalent import and export functionality and may lead to a risk to users of trapping their data into a service [8]. 

## Comparison among approaches.

PIMs have some overlapping sets of features with the DTP. Both allow users to control their data and send it to different online providers. 
The main differences are highlighted in the table below:

| PIMS | DTP |
| --- | --- |
| PIMS stores the personal data in a centralized repository | DTP avoids storing the same data in multiple places. DTP data resides in the originating service and destination service without a new copy being created at a third-party |
| PIMS are also subject to the risks and disadvantages outlined in the description of the Centralized Deployment Model (requiring to be both trustworthy and highly skilled in data protection) | DTP offers three types of deployments models |
| Without DTP each PIMS would have to create Adapters for each data model for each provider, thereby greatly increasing the number of Adapters they have to build and maintain |The Data Transfer Project makes it easier for PIMS to interact with providers |
| With the PIMS acting as a centralized location where his data live, the PIMS would allow the user to view and reason about the data collected. The user can then truly control the flow of data and manage fine-grained authorizations for accessing his data | Given the huge number of data sources that a user interacts with on a daily basis, interoperability is not enough to offer user the control of how is he sharing his data |
| PIMS allows to keep personal data anonymous for services that don't require data at the individual level. Only the answers (summarized data  necessary to the requester app) leaves the boundaries of the user’s PIMS | Data are stored in external services providers, although the data can be exported to others providers as long as the standard models and adapters are available | 

## Implementation example/case (for DTP).

The project repository: https://github.com/google/data-transfer-project contains a prototype implementation that supports data transfers for a handful of initial Verticals (photos, mail, contacts, etc.), Data Models, Authentication Adapters, and Data Adapters, as well as components needed to run the DTP infrastructure on two cloud Host Platforms (Google Cloud Platform and Microsoft’s Azure). The GitHub repository also contains developer documentation on how to add services to the DTP, how to integrate an existing Adapter, and how to deploy a Host Platform either locally or on a server. Our goal is for the developer community to extend the DTP Platform to support more Verticals, providers, and Host Platform options [8].

### Current status of the project.

DTP is an early stage approach to exploit the data portability rights of the web, it's a open source solution backed by big companies such as Facebook, Twitter, Google and Microsoft and much of its code was developed by employees of such big players.

As per now, it has some already implemented functionalities to download data from a few well known services like: Flicker, Google, Instagram, Microsoft, Remember the milk, SmugMug, Twitter and Imgur. It can be self hosted for management of personal information, but for the purpose of the research we foccused on how one individual or company could use it for various reasons such as:

* Enrich it's own dataset
* Leverage services for clients
* Get better understanding of its clients
* Use the data for ad hoc analysis
* Facilitate the migration of new users from others services
* and many other examples

## Using DTP.

### Getting started.

The project makes available a demo where users can start transfering data right away from already stablished servers (requiring only that API keys are generated by the user for each one of the services it wants to use), like seems below:

![](6.png?raw=true "Demo server for transfering data")

Any person or company can however implement its own adapter to allow users to migrate to their services. For a detailed explanation on how to do it, one can refer to [their developer's guide](https://github.com/google/data-transfer-project/blob/master/Documentation/Developer.md), however we will give an overview of the steps involved and the results that can be achieved.

### Data Models.

The project relies on commom Data Models to match similar entitties for different services. For example, the class `PhotoModel` describes a generic photo that could be used by any service, so by writting a converter of given model to a format that is interesting to your goals allows you or your users to retrieve photos from various services and upload them to your system (if you want to use the service to facilitate new users to migrate to your company, for example).

### Adapters.

Adpters are split between `Importers` and `Exporters`, where the first is responsible to translate the `DataModel` you are interested to a format that complies to what your systems or goals expect to have. Because of the extense use of interfaces, most of the times the developer is left to implement only a few very straightforward methods, the example below shows the method one would have to implement in the importer in the case he's interested on doing sentiment analisys on photo descriptions.

```Java
public class ExamplePhotosImporter implements Importer<TokensAndUrlAuthData, PhotosContainerResource> {

    @Override
    public ImportResult importItem(UUID jobId,
                                   IdempotentImportExecutor idempotentExecutor,
                                   TokensAndUrlAuthData authData,
                                   PhotosContainerResource data) throws Exception {
        //Get a Colletion of PhotoModels
        Collection<PhotoModel> photos = data.getPhotos();

        //Start an output file
        BufferedWriter br = new BufferedWriter(new FileWriter("photo_descriptions.txt"));
        
        //Iterate over each photo
        for (PhotoModel photo :  photos) {
            //Save its input
            br.write(photo.getDescription() + "\n");
        }
        br.close();

        return ImportResult.OK;
    }
}
```

An `Exporter` can be done similarly.

### Authentication.

The project suggests `OAuth2` as the preferred authentication method. However any method can be used by implementing one of its authentication interfaces. In the case of `OAuth2` the simplicity of using their "out of the box" solutions is similar of implementing the importer, e.g.:

```java
public class ExampleOAuthConfig implements OAuth2Config {
    @Override
    public String getServiceName() {
        return "Example";
    }

    @Override
    public String getAuthUrl() { return "http://term.ie/oauth"; }

    @Override
    public String getTokenUrl() {
        return "http://term.ie/oauth/example/access_token.php";
    }

    @Override
    public Map<String, Set<String>> getExportScopes() {
        return ImmutableMap.of("PHOTOS", ImmutableSet.of("user_photos"));
    }

    @Override
    public Map<String, Set<String>> getImportScopes() {
        return ImmutableMap.of("PHOTOS", ImmutableSet.of("user_photos"));
    }
}
```

To avoid having sensitive information being exposed, the client acess key and secret can be set via variable environments, but as the deployment is done via `docker` it can be read locally from a `env.secrets` file and set in production. So one would have a file like:

```conf
# key and secret for Example Application
EXAMPLE_KEY=[key]
EXAMPLE_SECRET=[secret]
```

where `[key]` and `[secret]` are respectively the client access key and secret.

### Running the example application.

After following a few more build steps as stated in the [developer's guide](https://github.com/google/data-transfer-project/blob/master/Documentation/Developer.md) concerning building configurations for `Gradle` projects and automatic Injections, it's already possible to have a proof of concept and measure the value of the tool through using the local demo version provided by the project, like in the image below.

![](7.png?raw=true "Transfering photos from facebook to our Example Application")

## Next Steps.

Now, it's important to remember that the demo server is mainly for quick tests or for personal use. For a company a next step can be integrating directly with the api of the project through its website and providing users a handy way of importing and exporting their data (which can facilitate for companies to be compliant to GDPR pre-reqs) to and from their database.

Also, as the project natively ships with `docker`, it facilitates hosting it in cloud platforms and directly serving it behind load balancers.

## Caveats.

Although backed by some big companies, the full potential of the project is only unleashed once business for various backgrounds start complying to it, allowing users to make most of their data by shifting the exact information he/she needs between providers and breaking vendor locking. By the time of this research the project was still underdeveloped in this aspect, most of the complying companies were big technological business while many segments like banks and power suppliers are companies with a way bigger history of vendor locking.

If a company wants to host `DTP` and get data from services that are still not compliant, it will need to manually make adapters for the sources it want to explore, probably by using public API's which many times are constrained by limit of requests or could have a charge depending on the amount of requests. This should be kept in mind and reviewed before implementing a solution using `DTP`.

## Implementation.
The project used for this demo (forked from the original project) can be found under: [https://github.com/fmstefanini/dtp-cloud-computing](https://github.com/fmstefanini/dtp-cloud-computing)

## References.
* [1] https://www.talend.com/resources/what-is-data-portability/
* [2] https://en.wikipedia.org/wiki/Interoperability
* [3] https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=OJ:L:2016:119:FULL&from=NL
* [4] https://www.bna.com/final-european-union-n57982067329/#!
* [5] https://iapp.org/news/a/personal-information-management-systems-a-new-era-for-individual-privacy/
* [6] https://ojs.library.queensu.ca/index.php/surveillance-and-society/article/view/6424/6678
* [7] https://openpds.media.mit.edu/#architecture
* [8] https://datatransferproject.dev/dtp-overview.pdf
* [9] https://ec.europa.eu/isa2/sites/isa/files/eif_brochure_final.pdf
