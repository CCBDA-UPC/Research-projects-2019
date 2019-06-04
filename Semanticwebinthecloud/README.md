# CloudComputing Research Project

# The Semantic Web

## Abstract 

The volume of information on the Web is astonishing.

The semantic web emerged as a way to make sense of all the information present in the web. In the words of its creator - Tim Berners-Lee: &quot;The Semantic Web is an extension of the current web in which information is given well-defined meaning, better enabling computers and people to work in cooperation.&quot; The Semantic Web, originally proposed by the W3C, is primarily a new infrastructure to allow software agents to help different types of users in their access to resources on the Web (sources of information and services). Different languages of increasing complexity level are proposed to better exploit, combine and reason on the contents of these resources. The knowledge used, for example in the form of semantic markers, must be based on ontologies in order to be shared and provided with operational interpretations. The concept of metadata is at the heart of the approach with a great diversity in the interpretation and use of this notion. Automatic integration of information from heterogeneous sources is crucial especially for applications business. Finally, the problem of Web services enriches the perspective of the Semantic Web with a new dimension.

This perspective may come up against a number of obstacles that will have to be overcome, the search for solutions that can lead to different points of view on the future of the Semantic Web, putting more or less emphasis on automation or opposite on the user. Many questions arise about the practicality of this matter. How to use such disparate information and combine it into one large distributed database? How to extract knowledge from this information? How to enable computers to deduce new knowledge automatically? 

This paper aims at understanding the basics of semantic web and explore the wide possibilities it is offering.



## Introduction

Today, the Web is used by human beings in search of information that must exploit and select themselves the results obtained by the search engines, according to their intentions. Tomorrow, the Web will be exploited first and foremost by machines whose tasks will be to &quot;intelligently&quot; process the requests of these people and deliver them the expected results. This perspective is achievable through the Semantic Web.

The expression, as well as the idea of the Semantic Web, appeared very early in the history of the Web. In 1994, at the WWW 94 conference, Tim Berners-Lee was already outlining the idea of a  Web that could understand and use meta data from the World Wide Web. At the same conference, the creation of the W3C was announced. The W3C is an international consortium whose goal is to promote Web scalability and ensure its interoperability. The Semantic Web is the central project of W3C. It currently includes more than 450 members (companies, industry organizations, research and government organizations) who must adhere to the mission and respect the consortium&#39;s neutrality. The W3C is spread over three sites: the Massachusetts Institute of Technology (MIT), the European Research Consortium for Informatics and Mathematics (ERCIM), and Keio University (Japan). The W3C's activities fall into four main areas: Architecture, Interaction, Technology and Society (concerns the development of Web infrastructures to address social, legal and public policy issues) and finally, initiative for the accessibility of the Web.

The role of W3C is:

- Propose a vision as precise as possible of the future of the Web to allow the development of technical solutions to the issues it raises;

- Design technologies that support the realization of this vision and take into account both existing and future technologies;

- Participate in the standardization of Web technologies by creating specifications (called &quot;recommendations&quot;) freely available to everyone.

Currently, the goals of Semantic Web technologies are to enable and perfect a faster search for automated information and interoperability between the various information media present on the Web. In order to achieve these objectives, various complementary technologies have been developed. An introduction of these different technologies will allow us to better understand and understand the scope of the capabilities and uses of the Semantic Web.

This paper aims at understanding the main key concepts of the semantic web, unraveling its architecture, languages and adaptation rules, and current use cases.


## Evolution of the Web

### Web 1.0: Syntactic web

At dawn, the Internet operated according to a static economic model, presenting only publications of big companies. The user could then consult the information contained in the various commercial pages. This system, based on hypertext links, gave its users access to online services, via a browser (Internet Explorer, for example). The Internet of the 90s, called the traditional web, is above all a static web, whose main purpose is the distribution of information. The sites are essentially product oriented, the loading time is slow and the content (hypertext + multimedia) created by professionals is limited. It is a passive web that allows the user to consume information without great interaction. By 1995, the arrival of dot-com, a boom in dynamic content management systems, scripts and DHTML already defined a participatory web.

### Web 2.0: Social Web or read-write web

The collective strength of the small sites, giving a weight to the users, quickly democratized the Web, thus favoring a social approach where the creativity and the opinion of the surfer gained more and more interest. The canvas was now accessible from the desktop of the computer, via e-mail, word processors and shortcuts. These features created, therefore, a collective intelligence. Many began to improvise videographers through YouTube, others became musicians on MySpace or photographers on Flikr. Writers, meanwhile, engaged in writing on Wikipedia and various blog platforms.

Soon, there was a change in the very structure of the Web. The content was no longer imposed, but it was created to be indexed and qualified. It was then that we began to take interest in chatting and products such as AdSense, which allowed to monetize and evaluate the affluence on a site. The era of socialization then continued its course with the arrival of MSN Messenger and Facebook. These have revolutionized the communication between individuals, hitherto limited. This culture followed its course until today.

### Web 3.0: From the social web to the semantic web

This version of web is born in 2010 and always talk about it. Web 3.0 is a semantic Web, that of data, mobility and connected objects. It is centered on the user experience; the amount of information available depending on the context and the needs, as a tenant, the preferred tenant and the location of the user. The website is a huge database with an abundance of links. Web 2.5 is qualified for mobility, to meet the constant need to be connected, via smartphone, smart bracelet, smart watch, applications or other support.

### Web 4.0?

To accompany ever further the user, the web will take as ambassador intelligent objects, by 2020. If the market of connected objects remains nascent, it should know a success fulgurant very soon. The web 4.0 will push to a climax the relationship marketing and personalization introduced by the web 3.0.


![](https://github.com/kchennaf/RsearchProject/blob/master/image1.png?raw=true)
Figure: Evolution of the Web

If we summarize, we can classify the evolution of the web in three stages. The first (Web 1.0) is the connection of limited information content, managed and focused on business (1991-1999). The second (Web 2.0) initiates user participation at the social network level by creating, sharing and evaluating content (2000-2009). The third? We note that in recent years, a consolidation of users is underway. Some have already noticed the intuition of Google during research or content offered by the algorithms of social networks.

The websites are carefully focused on responsive design, mainly favoring the user&#39;s experience and the analysis of his behavior in order to reach his interests, through tools such as Eye-tracking and Click-tracking. Speech recognition, augmented reality, applications, immersive content and 360 video only signal the emergence of home automation, automation and connected objects. Of course, images and video will inevitably remain essential aspects of the future of online advertising. Native Ads and other advertising concepts will evolve easily via the semantics of the Web.


![](https://github.com/kchennaf/RsearchProject/blob/master/image9.png?raw=true)
Table: Comparison of different versions of the Web


## Semantic Web Architecture & Languages

The work aiming at the realization of the Semantic Web is located at very different levels of complexity. The simplest use games more or less reduced metadata in a search context information or to adapt the presentation of information to users. In this case, simple representation languages are enough. In the more complex work implementing sophisticated architectures, to allow, for example, the exploitation of heterogeneous resources, more expressive and more formal languages work in representation and in the engineering of knowledge, are required. The W3C proposal is initially based on a pyramid of languages of which only the lower layers are today relatively stabilized. The following figure shows one of the versions of the organization in layers proposed by the W3C. Two types of benefits can be expected from this organization. It allows a gradual approach in standardization and user acceptance processes.

![](https://github.com/kchennaf/RsearchProject/blob/master/image13.png?raw=true)
Figure : Semantic Web Architecture

Moreover, if it is well designed, it must make it possible to language at the right level of complexity, this being a function of the application to realize. A central aspect of the infrastructure is its ability to identify and locate various resources. It is based on the notion of URI (Uniform Resource Identifier) which allows to assign a unique identifier to a set of resources, on the web of course but also in other domains (documents, mobile phones, people, etc.). This concept is currently experiencing many extensions, currently being standardization, to entities other than URLs. It is at the very base languages of the W3C.  Another characteristic of all these languages is to be systematically expressible and exchangeable in an XML syntax. This makes it possible to benefit from all the technologies developed around XML: XML Schemas, tools for exploiting XML resources (JAVA libraries, etc.), databases managing XML files, even though specific query languages are needed for languages built on XML like RDF.

 
![](https://github.com/kchennaf/RsearchProject/blob/master/image8.jpg?raw=true)
Figure: URIs Vs URLs



The first of these languages is RDF (&quot;Resource Description Framework &quot;) to which RDF Schema (RDFS) has been added. The initial goals of RDF were the representation and better exploitation of metadata. But, more generally, RDF allows to see the Web as a set of resources connected by the links labeled &quot;semantically&quot;. RDF also made it possible to express wide vocabularies, such as the UNSPSC product catalog, especially when it is completed with RDFS which allows to offer a higher level structuring. RDF statements are resource-attribute-value triplets (the value is a resource or string). A resource must have a URI. Triplets are interpretable as subject-predicate-object.

 
![](https://github.com/kchennaf/RsearchProject/blob/master/image2.png?raw=true)
![](https://github.com/kchennaf/RsearchProject/blob/master/image12.png?raw=true)
Figure: RDF example

Note that the data model is not the structure one of XML trees even though an XML syntax exists. We are rather close first semantic networks. The simplicity of the model, criticizable for some, may be one of the keys to its acceptance and the relative simplicity of the realization of tools. Some additions like containers and the possibility of considering an RDF statement (triplet) as a node of the graph itself, can increase the expressiveness of the language, particularly in a discursive context or meta-data (which has affirmed such statement, ...) even though notes the little use of these additions in real applications. RDFS adds to RDF the ability to define class hierarchies and properties whose applicability and value domain can be Constraints using the rdfs: domain and rdfs: range attributes. Every application domain can be associated with a schema identified by a particular prefix and corresponding to a URI3. Instance resources are then described using the vocabulary given by the classes defined in this diagram. Applications can then give them a operational interpretation. It can be noted that RDFS does not integrate into as such of reasoning skills. On the other hand, appear database solutions dedicated to RDF (S), such as architecture Sesame with which the RQL query language is associated. To summarize, XML can be seen as the transport layer syntactically, RDF as a basic relational language. RDFS offers primitive representations of structures or ontological primitives.



## Key Concepts

The Semantic Web is not a Web apart. It is an extension of the current Web and is based on it. It therefore uses all the technical infrastructure of the current Web (the http protocol, the Uniform Resource Identifiers (URIs), the XML language) by adding new protocols and languages which allow to give a well-defined meaning to an information so that computers and humans can collaborate. Concretely, it is an infrastructure that allows the use of formalized knowledge in addition to the current informal content of the Web. This formalization of information will enable the Semantic Web to &quot;understand&quot; and process these automatically. It will be able to:

- --Generate semantic data from the input of information by users
- --Aggregate semantic data for publication or processing
- --Publish semantic data with custom or specialized formatting
- --Automatically exchange data according to their semantic relationships;
- --Generate semantic data automatically, without human input, from inference rules.

For this purpose, the Semantic Web infrastructure must therefore rely on different technologies, including representation languages and ontologies. These technologies have the function of giving meaning to sources of information by inserting metas data, thus allowing the automated processing of information via agents (robots) and facilitating the work of treatment and analysis performed by men. The main purpose of semantic technologies is therefore to allow machines to analyze the queries submitted by men and reason on the information to deliver only those strictly necessary for the expected response.

### Knowledge representation

The representation of an entity on which one wishes to operate is necessarily an approximation of this entity. If the representation were to have all the properties of the represented entity, it would be the entity itself! Hence, a representation is a structure of symbols to describe a model (an approximation) of the world in the context of a particular task.

Indeed, to manipulate explicit knowledge, a system must use a formal representation language, as efficiently as possible. Any expression of this language is established by means of symbols whose associations are governed by rules that form the syntax of representation. If to any syntactically correct expression of the representation a situation of the universe of reference is made to correspond, one deputy semantics to this formalism of representation. This semantics is often expressed in Boolean terms: situation is true (in the considered universe) or it is not true.

Mathematical logic is a model of mathematical reasoning, and it is mainly a formalism that allows reasoning to find new knowledge from that already known. Thus it provides an adequate framework for representing knowledge.

By definition, a formal system, that is to say a logic, is composed of:

- a language, i.e., a structure expressed by means of symbols, consisting of an alphabet and a method expression training
- a system of deduction which, starting from formulas of the language chosen as premises (i.e., axioms), makes it possible to construct new formulas (theorems) thanks to rules of deduction (or derivation)
- evaluation rules that allow to associate a &quot;value&quot;, called truth value, with any formula of the language (usually true or false).

The first two points are the syntax (how to write and calculate formulas) and the last one semantics (how to evaluate formulas) of representation in a model.

![](https://github.com/kchennaf/RsearchProject/blob/master/image10.png?raw=true)
Figure: Development of knowledge representation

### MetaData & LinkData

The use of Semantic Web infrastructures by different applications will be progressive. We can bet that the most numerous, in any case, will rely mainly on the exploitation of metadata, one of the basic principles of the Semantic Web being to describe Web resources using markers that can be exploited by different software.

In terms of applications, it is clear that the search for information (and therefore the indexing) is the primary utility of meta-data. But their role is not limited to that. We can also mention navigation assistance, collaborative work based on annotations, assistance with certification and, as importantly, personalization and adaptation to specific users, for example for the construction of courses. Individuals.

![](https://github.com/kchennaf/RsearchProject/blob/master/image4.png?raw=true)
Figure: Example of RDF using Linked Data

As examples of first realizations using RDF fully for metadata or annotations, we can mention the system Annotea and RDFPic software. Annotea is a client-server system collaborative for the annotation of documents without any modification of these. These RDF annotations can be added, modified and viewed by a community of users who have access to the same server annotation. XPointer and XLink are used to associate metadata with different parts of documents.  RDFPic is used to attach meta-data to digital photos for the purpose of facilitate the search for images. It relies on a combination descriptive elements with those of the Dublin Core which proposes a set of relatively limited descriptive fields (author, ...). The RDF descriptions are nested within JPEG files. On the other hand, different initiatives have already produced metadata specifications in RDF, for example LOM (Learning Object Metadata) for distance learning.

These two examples, Annotea and RDFPic, are interesting because they highlight important distinctions in the reports between metadata and Semantic Web. A first is between a nested representation in the resources they qualify (the Meta tags in HTML pages are the most primitive form even before the Semantic Web) and an external representation, by example a catalog or a Topic Maps file associated with a portal on Internet or Intranet. Using RDF is compatible with both while the Topic Maps approach works with external files. The external approach has the advantage of leaving the documents and allows the same documents to be used by communities or for different tasks, as often reported in the context of open hypermedia systems.

![](https://github.com/kchennaf/RsearchProject/blob/master/image5.png?raw=true)
Figure: Example of BBC Music's linked data with Wikipedia

### Ontologies & OWL

In the Web domain, an ontology is a document or file that defines formally the relationships between terms. An ontology conveys a certain &quot;explicit consensus&quot; and a certain &quot;sharing domain&quot; that are indispensable in the exploitation of Web resources. Formalization is a facet of ontologies that allows the exploitation and combination of Web resources. A typical ontology of the Web must have a taxonomy and a set of rules of inference. Taxonomy defines classes of objects and the relationships between them. The controlled vocabulary is then organized as a simple hierarchy. The rules of inference are based on the same principle as taxonomy but are even more powerful. For example, they allow ontologies to express the following rule: &quot;If a city postal code is associated with a status code and an address uses that city code, then that address is associated with the state code. &quot;

Thus, an ontology allows to:

- Share the common understanding of the information structure between people or software manufacturers
- Allow reuse of knowledge on a domain
- Explain what is considered implicit on a domain
- Distinguish knowledge on a field of operational knowledge
- Analyze knowledge on a domain

To represent ontologies, W3C has proposed a standard language: OWL (Ontology Web Language). The OWL language is built on RDFS and has XML syntax. It defines a rich vocabulary for the description of complex ontologies. It is based on a formal semantics defined by a rigorous syntax.

OWL and RDFS are two RDF languages that define vocabularies: &quot;RDF Schema defines the smallest number of concepts and properties needed to define a simple vocabulary. OWL is a much richer language which, with the notions defined by RDF Schema, adds the properties of equivalent class, equivalent property, identity of two resources, differences of two resources, of opposite, of symmetry, of transitivity, of cardinality, etc., to define complex relationships between resources. &quot;

![](https://github.com/kchennaf/RsearchProject/blob/master/image15.png?raw=true)
Figure: Evolution of Ontologies

## The Semantic Web Today

Web 2.0 (also called collaborative Web or Community Web) already represents a gateway to the Semantic Web. Web 2.0 puts the user at the center of the Internet, and its use is moving more and more towards interaction between users. Recent technological developments (XML / RSS feed) for its development suggest the premises of the Semantic Web.

In February 2004, the World Wide Web Consortium announced its agreement to use two key semantic Web technologies: the Resource Description Framework (RDF) and the Web Ontology Language (OWL). RDF and OWL already allow different types of users to share the same information, even if they do not share the same software. This news has launched the emergence of the semantic Web on a large scale. Five years ago, the Semantic Web was still at the advanced search level. Deployment of RDF and OWL technologies in commercial products and services signals the transition of Semantic Web technologies to the creation and deployment of a global market for technologies and tools that allow for more flexible access to data, content, and knowledge. the Web.

![](https://github.com/kchennaf/RsearchProject/blob/master/image7.png?raw=true)
Figure : Use of Semantic Web today

Software using RDF and OWL technologies currently include but are not limited to:

- Content creation applications: the authors of a document can add metadata (subject, author, place, language, indication of copyright, etc ...) to documents, to improve the search for documents.
- Web site management tools: Important websites can be dynamically managed according to custom content categories.
- Software that takes the best of RDF and OWL: organizations can integrate enterprise applications, publications and subscriptions using a flexible model.
- Transverse applications that reuse data: RDF and OWL are standards and not &quot;proprietary&quot; technologies, so reuse of data from different sources is possible.

While the emergence of the OWL standard has allowed the creation of some applications and a great evolution, the research continues to allow the emergence of new standards to manage the logic, the complete reasoning, and the confidence through the ontologies and the knowledge bases deployed for the Semantic Web. Today, several areas of development must evolve and progress in order to make full use of Semantic Web technologies:

- Exploration and learning techniques for the classification of knowledge;
- Development of models, languages ​​(metas data, ontologies) specific to fields of application, trades, services, etc.
- Development of software tools to assist the description of data and domains, especially for multimedia documents (image, videos, etc.);
- Multidisciplinary approaches (cognitive sciences, psychology, etc.) for linguistic and semantic representation;
- Techniques and tools for reasoning on models;
- Technologies for publishing and discovering services on the web;
- Distributed architectures for data exchange (peer-to-peer);
- Service-oriented architectures that allow different applications (for fixed or mobile support), connected by the network (Internet), to communicate and interoperate (service composition).

In 2005, nearly 60 companies sold semantic technology. Given that complex applications are not yet highly developed and effective, the market is dominated by institutional investors, fundamental research companies, and companies that adopt technology early to gain competitive advantage through the market. and the different states that have invested in basic research. The majority of the expenditures made to date mainly concern research and development.

In general, the first to adopt semantic technology hope to gain a strategic advantage from these new technologies and services in the future. The success of the semantic technology market will depend mainly on its impact on business performance. The market for semantic technologies is expected to evolve over a period of fifteen years from its prediction (2000) to the development of a market worth billions of dollars. The expected impact on the markets is expected to be over $ 1 trillion in 2020.

![](https://github.com/kchennaf/RsearchProject/blob/master/image3.jpg?raw=true)
![](https://github.com/kchennaf/RsearchProject/blob/master/image11.jpg?raw=true)
![](https://github.com/kchennaf/RsearchProject/blob/master/image6.jpg?raw=true)
![](https://github.com/kchennaf/RsearchProject/blob/master/image14.jpg?raw=true)
![](https://github.com/kchennaf/RsearchProject/blob/master/image16.jpg?raw=true)

                                        Figure : Example of products using semantic web technologies

## Limitations & Future Work

Tim Berners Lee's vision of a Semantic Web forming a universal knowledge base opens many perspectives, but nevertheless, its implementation poses multiple problems. The first to notice is the diversity and complexity of the languages proposed today by the W3C. On the other hand, the real cost of switching to the Semantic Web is an obstacle. Indeed, the strength of the Semantic Web lies in the software agents. The Semantic Web will have reached its full potential when different agents will create various programs to collect Web content from different sources. They will be able to process the information and exchange it with other programs as Web content readable by automated machines, the effectiveness of software agents will be increased. &quot;The Semantic Web promotes this synergy: even agents that are not specifically made to work together can transfer data between them if the data is accompanied by semantics. Before reaching this level of perfection, one must take into account an essential but problematic step of the Semantic Web which is the integration of information sources and the human resources to be mobilized to carry out this work. The Semantic Web infrastructure must first allow for simple and effective integration of information. On the other hand, the human resources to make this transition are still few and the producers of contents supposed to enrich the documents of metas data do not see immediate benefits to proceed to this enrichment. These various obstacles to the implementation of the Semantic Web can result in a categorization of the uses of the Semantic Web and its technologies according to the users. The cleavage should be between the needs of businesses and the needs of individuals on the one hand, and between the Semantic Web developed by scientists and the Semantic Web Community developed by Internet users on the other side.

Despite the various obstacles that have just been mentioned and which are inherent to its implementation, the Semantic Web and more broadly semantic technologies, should have a leading role in improving access to information, the development of economies and knowledge in general.

## References

Business Process Execution Language for Web Services (BPEL4WS) homepage: http://www128.ibm.com/developerworks/library/ws-bpel/

Christos Kouroupetroglou, Michail Salampasis, and Athanasios Manitsaris. A semantic-web based framework for developing applications to improve accessibility in the www. In W4A: Proceedings of the 2006 international cross-disciplinary workshop on Web accessibility (W4A), pages 98–108, New York, NY, USA, 2006. ACM Press. ISBN 1-59593-281-X. doi: http://doi.acm.org/10.1145/1133219. 1133238.

D. Fensel, F. van Harmelen, I. Horrocks, D. McGuinness, and P. F. Patel-Schneider. OIL: An ontology infrastructure for the semantic web. IEEE Intelligent Systems, 16(2):38–45, 2001. URL download/2001/IEEE-IS01.pdf.

G. Klyne, J. Carroll (2004). Resource Description Framework (RDF): Concepts and Abstract Syntax. W3C Recommendation 10th February 2004. Available at: http://www.w3.org/TR/rdf-concepts/

Grau, B. C. (2004). A Possible Simplification of the Semantic Web Architecture. WWW 2004, New York, USA

Hammond, B., A. Sheth, et al. (2002). Semantic Enhancement Engine: A Modular Document Enhancement Platform for Semantic Applications over Heterogeneous Content. Real World Semantic Web Applications. V. Kashyap and L. Shklar, IOS Press: 29-49

Ian Horrocks, Oliver Kutz, and Ulrike Sattler. The even more irresistible SROIQ. In Proc. of the 10th Int. Conf. on Principles of Knowledge Representation and Reasoning (KR 2006), pages 57–67. AAAI Press, 2006.

Interview with Tim Berners-Lee [https://www.consortiuminfo.org/bulletins/semanticweb.php](https://www.consortiuminfo.org/bulletins/semanticweb.php)

Lassila, O. and R. Swick (1999). Resource Description Framework (RDF) model and syntax specification., W3C Working Draft WD-rdf-syntax-19981008. http://www.w3.org/TR/WD-rdf-syntax.

OWL (2004). OWL Web Ontology Language Reference, W3C Recommendation, World Wide Web Consortium, http://www.w3.org/TR/owl-ref/. 2004. OWL-S (2004). OWL-based Web Service Ontology. 2004.

M-R. Koivunen, E. Miller (2001). W3C Semantic Web Activity. Proceedings of the Semantic Web Kick-off Seminar in Finland. Available at: [http://www.w3.org/2001/12/semweb-fin/w3csw](http://www.w3.org/2001/12/semweb-fin/w3csw)

Sheth, A. and C. Ramakrishnan (2003). &quot;Semantic (Web) Technology In Action: Ontology Driven Information Systems for Search, Integration and Analysis.&quot; IEEE Data Engineering Bulletin, Special issue on Making the Semantic Web Real 26(4): 40-48.

Sheth, A., C. Ramakrishnan, et al. (2005). &quot;Semantics for the Semantic Web: The Implicit, the Formal and the Powerful.&quot; Intl. Journal on Semantic Web and Information Systems 1(1): 1-18.

Simon Harper and Sean Bechhofer. Semantic Triage for Accessibility. IBM Systems Journal, 44(3):637–648, 2005.

T. Berners-Lee (1998). Semantic Web Road Map. W3C. Available at: http://www.w3.org/DesignIssues/Semantic.html
