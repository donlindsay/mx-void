(defvar mx-class-void 'mx-class-void "A VOID class.")

(defvar mx-class 'mx-void-Dataset)

(defun mx-load-void-dataset ()
  "Load a formatted VOID dataset."
  (interactive (file))
  ; libxml-parse-xml-tree
  (message "VOID dataset loaded."))

(defun mx-create-void-dataset ()
      "dataset – A set of RDF triples that are published,
maintained or aggregated by a single provider."
      (interactive (name))
      ; open a buffer and write the headers
      (message "VOID dataset open for editing."))

(setq mx-uri-void "http://rdfs.org/ns/void#Dataset")

(setq mx-void-property '((mx-void-feature . nil) 
			 (mx-void-subset . nil)
			 (mx-void-sparqlEndpoint . nil) 
			 (mx-void-exampleResource . nil) 
			 (mx-void-vocabulary . nil)
			 (mx-void-dataDump . nil) 
			 (mx-void-uriLookupEndpoint . nil) 
			 (mx-void-uriRegexPattern . nil)
			 (mx-void-class . nil) 
			 (mx-void-classes . nil) 
			 (mx-void-classPartition . nil)
    			 (mx-void-distinctObjects . nil) 
			 (mx-void-distinctSubjects . nil) 
			 (mx-void-documents . nil)
			 (mx-void-entities . nil) 
			 (mx-void-openSearchDescription . nil) 
			 (mx-void-properties . nil)
			 (mx-void-property . nil) 
			 (mx-void-propertyPartition . nil) 
			 (mx-void-rootResource . nil)
			 (mx-void-triples . nil) 
			 (mx-void-uriSpace))

(setq mx-used-with '((mx-void-subset . nil) 
		     (mx-void-target . nil)
		     (mx-void-subjectsTarget . nil) 
		     (mx-void-objectsTarget . nil) 
		     (mx-void-classPartition . nil)
		     (mx-void-inDataset . nil) 
		     (mx-void-propertyPartition)))


(setq mx-void-Superclass 'mx-dctype-dataset)

(setq mx-void-subclass 'void-Linkset)

(defvar mx-void-DatasetDescription 'void-datasetdescription
  "dataset description – A web resource whose foaf:primaryTopic
  or foaf:topics include void-Datasets.")

mx-uri-void http://rdfs.org/ns/void#DatasetDescription
    Superclass: foaf:Document

(defvar mx-void-Linkset 'mx-void-linkset
  "linkset – A collection of RDF links between two void-Datasets.")
  
(setq mx-uri-void "http://rdfs.org/ns/void#Linkset")

(setq mx-void-property '((void-target         . nil)
			 (void-linkPredicate  . nil)
			 (void-subjectsTarget . nil)
			 (void-objectsTarget  . nil)))

(setq mx-superclass-void '((void-Dataset . nil)))

(defvar mx-void-technicalfeature 'mx-void-technicalfeature
  "technical feature – A technical feature of a void-Dataset,
 such as a supported RDF serialization format.")

(mx-uri-void "http://rdfs.org/ns/void#TechnicalFeature")

(setq mx-void-with '((void-feature)))

(defvar mx-void-class 'void-class
  "class – The rdfs:Class that is the rdf:type of all entities in a
class-based partition.")

(setq mx-uri-void "http://rdfs.org/ns/void#class")

Type:
    owl:FunctionalProperty
Domain:
    void-Dataset
Range:
    rdfs:Class

(defvar mx-void-classPartition 'void-classPartition
  "class partition – A subset of a void-Dataset that contains
  only the entities of a certain rdfs:Class.")

(setq mx-uri-void "http://rdfs.org/ns/void#classPartition")

mx-void-domain
    void-Dataset
Range:
    void-Dataset
Superproperty:
    void-subset

(defvar mx-void-classes 'void-classes
  "classes – The total number of distinct classes in a
void-Dataset. In other words, the number of distinct resources
occuring as objects of rdf:type triples in the dataset.")

(setq mx-uri-void "http://rdfs.org/ns/void#classes")

mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-dataDump

Data Dump – An RDF dump, partial or complete, of a void-Dataset.

mx-uri-void
    http://rdfs.org/ns/void#dataDump
mx-void-domain
    void-Dataset
Range:
    rdfs:Resource


(defvar mx- void-distinctObjects

distinct objects – The total number of distinct objects in a void-Dataset. In other words, the number of distinct resources that occur in the object position of triples in the dataset. Literals are included in this count.

mx-uri-void
    http://rdfs.org/ns/void#distinctObjects
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-distinctSubjects

"distinct subjects – The total number of distinct subjects in a
void-Dataset. In other words, the number of distinct resources
that occur in the subject position of triples in the dataset."

mx-uri-void
    http://rdfs.org/ns/void#distinctSubjects
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-documents

number of documents – The total number of documents, for datasets that are published as a set of individual documents, such as RDF/XML documents or RDFa-annotated web pages. Non-RDF documents, such as web pages in HTML or images, are usually not included in this count. This property is intended for datasets where the total number of triples or entities is hard to determine. void-triples or void-entities should be preferred where practical.

mx-uri-void
    http://rdfs.org/ns/void#documents
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-entities

number of entities – The total number of entities that are described in a void-Dataset.

mx-uri-void
    http://rdfs.org/ns/void#entities
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-exampleResource

example resource of dataset

mx-uri-void
    http://rdfs.org/ns/void#exampleResource
mx-void-domain
    void-Dataset
Range:
    rdfs:Resource


(defvar mx- void-feature

feature

mx-uri-void
    http://rdfs.org/ns/void#feature
mx-void-domain
    void-Dataset
Range:
    void-TechnicalFeature


(defvar mx- void-inDataset

in dataset – Points to the void-Dataset that a document is a part of.

mx-uri-void
    http://rdfs.org/ns/void#inDataset
mx-void-domain
    foaf:Document
Range:
    void-Dataset
Superproperty:
    dct:isPartOf


(defvar mx- void-linkPredicate

a link predicate

mx-uri-void
    http://rdfs.org/ns/void#linkPredicate
mx-void-domain
    void-Linkset
Range:
    rdf:Property


(defvar mx- void-objectsTarget

Objects Target – The dataset describing the objects of the triples contained in the Linkset.

mx-uri-void
    http://rdfs.org/ns/void#objectsTarget
Type:
    owl:FunctionalProperty
mx-void-domain
    void-Linkset
Range:
    void-Dataset
Superproperty:
    void-target


(defvar mx- void-openSearchDescription

open search description – An OpenSearch description document for a free-text search service over a void-Dataset.

mx-uri-void
    http://rdfs.org/ns/void#openSearchDescription
mx-void-domain
    void-Dataset
Range:
    foaf:Document


(defvar mx- void-properties

number of properties – The total number of distinct properties in a void-Dataset. In other words, the number of distinct resources that occur in the predicate position of triples in the dataset.

mx-uri-void
    http://rdfs.org/ns/void#properties
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-property

property – The rdf:Property that is the predicate of all triples in a property-based partition.

mx-uri-void
    http://rdfs.org/ns/void#property
Type:
    owl:FunctionalProperty
mx-void-domain
    void-Dataset
Range:
    rdf:Property


(defvar mx- void-propertyPartition

property partition – A subset of a void-Dataset that contains only the triples of a certain rdf:Property.

mx-uri-void
    http://rdfs.org/ns/void#propertyPartition
mx-void-domain
    void-Dataset
Range:
    void-Dataset
Superproperty:
    void-subset


(defvar mx- void-rootResource

root resource – A top concept or entry point for a void-Dataset that is structured in a tree-like fashion. All resources in a dataset can be reached by following links from its root resources in a small number of steps.

mx-uri-void
    http://rdfs.org/ns/void#rootResource
mx-void-domain
    void-Dataset


(defvar mx- void-sparqlEndpoint

has a SPARQL endpoint at

mx-uri-void
    http://rdfs.org/ns/void#sparqlEndpoint
mx-void-domain
    void-Dataset


(defvar mx- void-subjectsTarget

Subjects Target – The dataset describing the subjects of triples contained in the Linkset.

mx-uri-void
    http://rdfs.org/ns/void#subjectsTarget
Type:
    owl:FunctionalProperty
mx-void-domain
    void-Linkset
Range:
    void-Dataset
Superproperty:
    void-target


(defvar mx- void-subset

has subset

mx-uri-void
    http://rdfs.org/ns/void#subset
mx-void-domain
    void-Dataset
Range:
    void-Dataset
Subproperties:
    void-classPartition, void-propertyPartition


(defvar mx- void-target

Target – One of the two datasets linked by the Linkset.

mx-uri-void
    http://rdfs.org/ns/void#target
mx-void-domain
    void-Linkset
Range:
    void-Dataset
Subproperties:
    void-subjectsTarget, void-objectsTarget


(defvar mx- void-triples

number of triples – The total number of triples contained in a void-Dataset.

mx-uri-void
    http://rdfs.org/ns/void#triples
mx-void-domain
    void-Dataset
Range:
    xsd:integer


(defvar mx- void-uriLookupEndpoint

has an URI look-up endpoint at – Defines a simple URI look-up protocol for accessing a dataset.

mx-uri-void
    http://rdfs.org/ns/void#uriLookupEndpoint
mx-void-domain
    void-Dataset


(defvar mx-void-uriRegexPattern
  "URI regular expression pattern – Defines a regular expression
pattern matching URIs in the dataset.")

(setq mx-uri-void "http://rdfs.org/ns/void#uriRegexPattern")

(setq mx-void-domain 'void-Dataset)

(defvar mx-void-uriSpace 'void-uriSpace
  "URI space – A URI that is a common string prefix of all the
  entity URIs in a void-Dataset.")

(setq mx-uri-void "http://rdfs.org/ns/void#uriSpace")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'mx-rdfs-Literal)

(defvar mx-void-vocabulary 'void-vocabulary
  "vocabulary – A vocabulary that is used in the dataset.")

(setq mx-uri-void "http://rdfs.org/ns/void#vocabulary")

(setq mx-void-domain 'void-Dataset "Default VOID domain value.")

;; this is the main header string for new void buffers
(defvar mx-void-header-string "
@prefix void: <http://rdfs.org/ns/void#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix mx-rdfs- <http://www.w3.org/2000/01/rdf-schema#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix dcterms: <http://purl.org/dc/terms/> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix wv: <http://vocab.org/waiver/terms/norms> .        
@prefix sd: <http://www.w3.org/ns/sparql-service-description .

@prefix : <#> .

<document.rdf> void-inDataset <void.ttl#MyDataset> .")

:Aggregate_DS a void-Dataset;
    dcterms:title "Aggregate Dataset";
    dcterms:description "An aggregate of the A and B datasets.";
    void-sparqlEndpoint <http://example.org/sparql>;
    void-subset :DS_A;
    void-subset :DS_B;
    .

:MyDataset a void-Dataset;
    void-classPartition [ void-class foaf:Person; ];
    void-classPartition [ void-class foaf:Organization; ];
    void-propertyPartition [ void-property foaf:name; ];
    void-propertyPartition [ void-property foaf:member; ];
    void-propertyPartition [ void-property foaf:homepage; ];
    void-propertyPartition [ void-property rdf:type; ];
    .



;; slightly modified version of the note contained in the official ref:
;; Note: There are two different notions of “directionality” for RDF links:
;;
;;     Which dataset provides the subjects of the triples, and which the objects?
;;     Which dataset contains the links? (Who published them?)
;;
;;     The void-subjectsTarget and void-objectsTarget properties
;;     express the first notion, while not stating anything about
;;     containment of the links. The second notion is expressed by
;;     making the linkset a void-subset of the respective target
;;     datasets.
;;
;;     Especially when referring to owl:sameAs links, usually the
;;     second notion is intended. The property is symmetric, so
;;     their subjects and objects are exchangeable. The question is
;;     usually which publisher made the links available as part of
;;     their dataset.

;; example VOID in an org src block
;; #+begin_src n3
;; :DBpedia a void-Dataset .
;; :DBpedia_Geonames a void-Linkset .
;; :DBpedia a void-Dataset;
;;    foaf:homepage <http://dbpedia.org/> .
;; #+end_src

(defvar dcterms-title "The name of the dataset.")

(defvar dcterms-description "A textual description of the dataset.")

(defvar dcterms-creator "An entity, such as a person,
organisation, or service, that is primarily responsible for
creating the dataset. The creator should be described as an RDF
resource, rather than just providing the name as a literal.")

(defvar dcterms-publisher "An entity, such as a person,
organisation, or service, that is responsible for making the
dataset available. The publisher should be described as an RDF
resource, rather than just providing the name as a literal.")

(defvar dcterms-contributor "An entity, such as a person,
organisation, or service, that is responsible for making
contributions to the dataset. The contributor should be described
as an RDF resource, rather than just providing the name as a
literal.")

(defvar dcterms-source "A related resource from which the dataset
is derived. The source should be described as an RDF resource,
rather than as a literal.")

(defvar dcterms-date "A point or period of time associated with
an event in the life-cycle of the resource. The value should be
formatted and data-typed as an xsd:date.")

(defvar dcterms-created "Date of creation of the dataset. The
value should be formatted and data-typed as an xsd:date.")

(defvar dcterms-issued "Date of formal issuance *or*
publication of the dataset. The value should be formatted and
datatyped as an xsd:date.")

(defvar dcterms-modified  "Date on which the dataset was changed. The
value should be formatted and datatyped as an xsd:date.")

;; :DBLP a void-Dataset ; 
;;     dcterms-subject <http://dbpedia.org/resource/Computer_science> ;
;;     dcterms-subject <http://dbpedia.org/resource/Journal> ;
;;     dcterms-subject <http://dbpedia.org/resource/Proceedings> ;
;;     .

;; :DBpedia a void-Dataset ;
;;     void-feature <http://www.w3.org/ns/formats/RDF_XML> ;
;;     .

;; :HTTPCachingETags a void-TechnicalFeature ;
;;     mx-rdfs-label "HTTP ETag support" ;
;;     mx-rdfs-comment "the dataset supports HTTP caching using ETags" ;
;;     mx-rdfs-seeAlso <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#> ;
;;     .

;; :DBpedia a void-Dataset ;
;;     void-sparqlEndpoint <http://dbpedia.org/sparql> ;
;;     .

;; :NYTimes a void-Dataset ;
;;     void-dataDump <http://data.nytimes.com/people.rdf> ;
;;     void-dataDump <http://data.nytimes.com/organizations.rdf> ;
;;     void-dataDump <http://data.nytimes.com/locations.rdf> ;
;;     void-dataDump <http://data.nytimes.com/descriptors.rdf> ;
;;     .

;; :Sindice a void-Dataset ; 
;;     void-uriLookupEndpoint
;;     <http://api.sindice.com/v2/search?qt=term&q=> .

;; :Sindice a void-Dataset ;
;;     void-openSearchDescription
;;     <http://www.sindice.com/opensearch.xml> .

;; :DBpedia a void-Dataset;
;;     void-exampleResource <http://dbpedia.org/resource/Berlin> ; 
;;     void-exampleResource <http://dbpedia.org/resource/Physics> ;
;;     void-exampleResource <http://dbpedia.org/resource/Ludwig_van_Beethoven> ;
;;     .

;; :DBpedia a void-Dataset;
;;     void-uriSpace "http://dbpedia.org/resource/";
;;     .

;; :DBpedia a void-Dataset;
;;     void-uriRegexPattern "^http://dbpedia\\.org/resource/";
;;     .

;; :DBpediaTurtleFiles a void-Dataset;
;;     void-uriRegexPattern "^http://dbpedia\\.org/(.+)\\.ttl$";
;;     void-feature <http://www.w3.org/ns/formats/Turtle>;
;;     .



