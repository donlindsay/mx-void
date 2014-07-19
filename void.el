;; void.el Vocabulary of Interlinked Datasets library
;; by Don Lindsay (don.lindsay@gmail.com)
;; emacs boilerplate
;; gpl2 boilerplate
;;
;; Modified version of the discourse on 'directionality:
;;
;;     There are two different notions of “directionality” for RDF
;;     links:
;;
;;     Which dataset provides the subjects of the triples, and which
;;     the objects?
;;
;;     Which dataset contains the links? (Who published them?)
;;
;;     The void-subjectsTarget and void-objectsTarget properties
;;     express the first notion, while not stating anything about
;;     containment of the links. The second notion is expressed by
;;     making the linkset a void-subset of the respective target
;;     datasets.
;;
;;     Especially when referring to owl:sameAs links, usually the
;;     second notion is intended. The property is symmetric, so their
;;     subjects and objects are exchangeable. The question is usually
;;     which publisher made the links available as part of their
;;     dataset.
;;
;; hammertime:

(defvar mx-void-class 'mx-void-class "A VOID class.")

(defvar mx-void-dataset 'void-Dataset "A VOID dataset.")

(defvar mx-void-dataset 'void-dataset 
  "Dataset – A set of RDF triples that are published, maintained
or aggregated by a single provider.")

(setq mx-void-uri "http://rdfs.org/ns/void#Dataset")

(setq mx-void-property '((mx-void-feature               . nil) 
			 (mx-void-subset                . nil)
			 (mx-void-sparqlEndpoint        . nil) 
			 (mx-void-exampleResource       . nil) 
			 (mx-void-vocabulary            . nil)
			 (mx-void-dataDump              . nil) 
			 (mx-void-uriLookupEndpoint     . nil) 
			 (mx-void-uriRegexPattern       . nil)
			 (mx-void-class                 . nil) 
			 (mx-void-classes               . nil) 
			 (mx-void-classPartition        . nil)
    			 (mx-void-distinctObjects       . nil) 
			 (mx-void-distinctSubjects      . nil) 
			 (mx-void-documents             . nil)
			 (mx-void-entities              . nil) 
			 (mx-void-openSearchDescription . nil) 
			 (mx-void-properties            . nil)
			 (mx-void-property              . nil) 
			 (mx-void-propertyPartition     . nil) 
			 (mx-void-rootResource          . nil)
			 (mx-void-triples               . nil) 
			 (mx-void-uriSpace              . nil)
			 )
      )

(setq mx-void-with '((mx-void-subset                    . nil) 
		     (mx-void-target                    . nil)
		     (mx-void-subjectsTarget            . nil) 
		     (mx-void-objectsTarget             . nil) 
		     (mx-void-classPartition            . nil)
		     (mx-void-inDataset                 . nil) 
		     (mx-void-propertyPartition         . nil)
		     )
      )

(setq mx-void-Superclass 'mx-dctype-dataset)

(setq mx-void-subclass 'void-Linkset)

(defvar mx-void-DatasetDescription 'void-dataset-description
  "dataset description – A web resource whose foaf:primaryTopic
  or foaf:topics include void-Datasets.")

(setq mx-void-uri "http://rdfs.org/ns/void#DatasetDescription")

(setq mx-void-superclass 'foaf-Documents)

(defvar mx-void-Linkset 'mx-void-linkset
  "linkset – A collection of RDF links between two void-Datasets.")
  
(setq mx-void-uri "http://rdfs.org/ns/void#Linkset")

(setq mx-void-property '((void-target         . nil)
			 (void-linkPredicate  . nil)
			 (void-subjectsTarget . nil)
			 (void-objectsTarget  . nil)
			 )
      )

(setq mx-superclass-void '((void-Dataset . nil)
			   )
      )

(defvar mx-void-technicalfeature 'mx-void-technicalfeature
  "technical feature – A technical feature of a void-Dataset,
 such as a supported RDF serialization format.")

(mx-void-uri "http://rdfs.org/ns/void#TechnicalFeature")

(setq mx-void-with '((void-feature . nil)
		     )
      )

(defvar mx-void-class 'void-class
  "class – The rdfs:Class that is the rdf:type of all entities in
a class-based partition.")

(setq mx-void-uri "http://rdfs.org/ns/void#class")

(setq mx-rdfs-type 'mx-owl-FunctionalProperty)

(setq mx-void-domain 'void-Dataset)

(setq mx-void-range 'mx-rdfs-class)

(defvar mx-void-classPartition 'void-classPartition
  "class partition – A subset of a void-Dataset that contains
  only the entities of a certain rdfs-class.")

(setq mx-void-uri "http://rdfs.org/ns/void#classPartition")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-super-property 'void-subset)

(defvar mx-void-classes 'void-classes
  "Classes – The total number of distinct classes in a
void-Dataset. In other words, the number of distinct resources
occuring as objects of rdf:type triples in the dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#classes")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'ms-xsd-integer)

(defvar mx-void-dataDump 'void-dataDump
 "Data Dump – An RDF dump, partial or complete, of a void-Dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#dataDump")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'mx-rdfs-Resource)

(defvar mx-void-distinctObjects 'void-distinct-objects
  "distinct objects – The total number of distinct objects in a
  void-Dataset. In other words, the number of distinct resources
  that occur in the object position of triples in the
  dataset. Literals are included in this count.")

(setq mx-void-uri "http://rdfs.org/ns/void#distinctObjects")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'xsd-integer)

(defvar mx-void-distinctSubjects 'void-distinctSubjects
  "distinct subjects – The total number of distinct subjects in a
void-Dataset. In other words, the number of distinct resources
that occur in the subject position of triples in the dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#distinctSubjects")

(setq mx-void-domain 'void-Dataset)

(setq mx-xsd-integer 'xsd-integer)

(defvar mx-void-documents 'void-documents
  "number of documents – The total number of documents, for
  datasets that are published as a set of individual documents,
  such as RDF/XML documents or RDFa-annotated web pages. Non-RDF
  documents, such as web pages in HTML or images, are usually not
  included in this count. This property is intended for datasets
  where the total number of triples or entities is hard to
  determine. void-triples or void-entities should be preferred
  where practical.")

(setq mx-void-uri "http://rdfs.org/ns/void#documents")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'mx-xsd-integer)


(defvar mx-void-entities 'void-entities
  "number of entities – The total number of entities that are
  described in a void-Dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#entities")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'xsd-integer)

(defvar mx-void-exampleResource
  "example resource of dataset")

(setq mx-void-uri "http://rdfs.org/ns/void#exampleResource")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'rdfs-Resource)

(defvar mx-void-feature 'void-feature
  "A VOID feature.")

(setq mx-void-uri "http://rdfs.org/ns/void#feature")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'void-TechnicalFeature)

(defvar mx-void-inDataset 'void-inDataset
  "in dataset – Points to the void-Dataset that a document is a
  part of.")

(setq mx-void-uri "http://rdfs.org/ns/void#inDataset")

(setq mx-void-domain 'foaf-Documents)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-SuperpropertyOf 'dct-isPartOf)

(defvar mx-void-linkPredicate 'void-linkPredicate
  "A link predicate.")

(setq mx-void-uri "http://rdfs.org/ns/void#linkPredicate")

(setq mx-void-domain 'void-Linkset)

(setq mx-rdfs-range 'rdf-Property)


(defvar mx-void-objectsTarget 'void-objectsTarget
  "Objects Target – The dataset describing the objects of the
  triples contained in the Linkset.")

(setq mx-void-uri "http://rdfs.org/ns/void#objectsTarget")

(setq mx-rdfs-type 'mx-owl-FunctionalProperty)

(setq mx-void-domain 'mx-void-Linkset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-superproperty 'void-target)

(defvar mx-void-openSearchDescription 'void-openSearchDescription
  "open search description – An OpenSearch description document
  for a free-text search service over a void-Dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#openSearchDescription")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'foaf-Documents)

(defvar mx-void-properties 'mx-void-properties
  "Number of properties – The total number of distinct properties
in a void-Dataset. In other words, the number of distinct
resources that occur in the predicate position of triples in the
dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#properties")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'mx-xsd-integer)

(defvar mx-void-property 'void-property
  "Property – The rdf:Property that is the predicate of all
  triples in a property-based partition.")

(setq mx-void-uri "http://rdfs.org/ns/void#property")

(setq mx-rdfs-type 'mx-owl-FunctionalProperty)

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'rdf-Property)

(defvar mx-void-propertyPartition
  "property partition – A subset of a void-Dataset that contains
  only the triples of a certain rdf:Property.")

(setq mx-void-uri "http://rdfs.org/ns/void#propertyPartition")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-Superproperty 'void-subset)

(defvar mx-void-rootResource 'void-root-Resources
  "Root resource – A top concept or entry point for a
  void-Dataset that is structured in a tree-like fashion. All
  resources in a dataset can be reached by following links from
  its root resources in a small number of steps.")

(setq mx-void-uri "http://rdfs.org/ns/void#rootResource")

(setq mx-void-domain 'void-Dataset)

(defvar mx-void-sparqlEndpoint "http://rdfs.org/ns/void#sparqlEndpoint")

(setq mx-void-domain 'void-Dataset)

(defvar mx-void-subjectsTarget 'void-subjects-target
  "Subjects Target – The dataset describing the subjects of
triples contained in the Linkset.")

(setq mx-void-uri "http://rdfs.org/ns/void#subjectsTarget")

(setq mx-rdfs-type 'mx-owl-FunctionalProperty)

(setq mx-void-domain 'void-Linkset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-super-property 'void-target)

(defvar mx-void-subset "http://rdfs.org/ns/void#subset")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-subproperties
    '((void-classPartition    . nil) 
      (void-propertyPartition . nil))

(defvar mx-void-target 
  "Target – One of the two datasets linked by the Linkset.")

(setq mx-void-uri "http://rdfs.org/ns/void#target")

(setq mx-void-domain 'void-Linkset)

(setq mx-rdfs-range 'void-Dataset)

(setq mx-void-subproperties
    '((void-subjectsTarget . nil) 
      (void-objectsTarget  . nil)))

(defvar mx-void-triples
  "Number of triples – The total number of triples contained in a
  void-Dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#triples")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'xsd-integer)

(defvar mx-void-uriLookupEndpoint
  "Defines a simple URI look-up protocol for accessing a dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#uriLookupEndpoint")

(setq mx-void-domain 'void-Dataset)

(defvar mx-void-uriRegexPattern
  "URI regular expression pattern – Defines a regular expression
pattern matching URIs in the dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#uriRegexPattern")

(setq mx-void-domain 'void-Dataset)

(defvar mx-void-uriSpace 'void-uriSpace
  "URI space – A URI that is a common string prefix of all the
  entity URIs in a void-Dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#uriSpace")

(setq mx-void-domain 'void-Dataset)

(setq mx-rdfs-range 'mx-rdfs-Literal)

(defvar mx-void-vocabulary 'void-vocabulary
  "vocabulary – A vocabulary that is used in the dataset.")

(setq mx-void-uri "http://rdfs.org/ns/void#vocabulary")

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


;;; Some Dublin Core Terms:
;;; http://dublincore.org/documents/2008/01/14/dcmi-terms/
(defvar mx-dcterms-title 'dcterms-title 
  "The name of the dataset.")

(defvar mx-dcterms-description 'dcterms-description
  "A textual description of the dataset.")

(defvar mx-dcterms-creator 'dcterms-creator
  "An entity, such as a person, organisation, or service, that is
primarily responsible for creating the dataset. The creator
should be described as an RDF resource, rather than just
providing the name as a literal.")

(defvar mx-dcterms-publisher 'dcterms-publisher
  "An entity, such as a person, organisation, or service, that is
responsible for making the dataset available. The publisher
should be described as an RDF resource, rather than just
providing the name as a literal.")

(defvar mx-dcterms-contributor 'dcterms-contributor
  "An entity, such as a person, organisation, or service, that is
responsible for making contributions to the dataset. The
contributor should be described as an RDF resource, rather than
just providing the name as a literal.")

(defvar mx-dcterms-source 'dcterms-source
  "A related resource from which the dataset is derived.  The
source should be described as an RDF resource, rather than as a
literal.")

(defvar mx-dcterms-date 'dcterms-date
  "A point or period of time associated with an event in the
life-cycle of the resource. The value should be formatted and
data-typed as an xsd:date.")

(defvar mx-dcterms-created 'dcterms-created
  "Date of creation of the dataset. The value should be formatted
and data-typed as an xsd:date.")

(defvar mx-dcterms-issued 'dcterms-issued
  "Date of formal issuance *or* publication of the dataset. The
value should be formatted and datatyped as an xsd:date.")

(defvar mx-dcterms-modified 'dcterms-modified
  "Date on which the dataset was changed. The value should be
formatted and datatyped as an xsd:date.")

;; Sketches
(defun mx-load-void-dataset ()
  "Load a formatted VOID dataset."
  (interactive)
					; libxml-parse-xml-tree
  (message "VOID dataset loaded.")  )

(defun mx-create-void-dataset ()
  "Create a VOID dataset."
  (interactive)
					; open a buffer and write the headers
  (message "Opening a new VOID dataset for editing.")  )

;; example DBpedia definitions
;; :DBpedia a void-Dataset ;
;;     void-sparqlEndpoint <http://dbpedia.org/sparql> ;
;;     .
;; :DBLP a void-Dataset ; 
;;     dcterms-subject <http://dbpedia.org/resource/Computer_science> ;
;;     dcterms-subject <http://dbpedia.org/resource/Journal> ;
;;     dcterms-subject <http://dbpedia.org/resource/Proceedings> ;
;;     .
;; :DBpedia a void-Dataset ;
;;     void-feature <http://www.w3.org/ns/formats/RDF_XML> ;
;;     .
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

;; example NYTimes definition
;; :NYTimes a void-Dataset ;
;;     void-dataDump <http://data.nytimes.com/people.rdf> ;
;;     void-dataDump <http://data.nytimes.com/organizations.rdf> ;
;;     void-dataDump <http://data.nytimes.com/locations.rdf> ;
;;     void-dataDump <http://data.nytimes.com/descriptors.rdf> ;
;;     .
;; Example VOID 
;; #+begin_src n3
;; :DBpedia a :void-Dataset .
;; :DBpedia_Geonames a :void-Linkset .
;; :DBpedia a :void-Dataset;
;;    foaf:homepage <http://dbpedia.org/> .
;; #+end_src
;;
;; :Aggregate_DS a void-Dataset;
;;     dcterms:title "Aggregate Dataset";
;;     dcterms:description "An aggregate of the A and B datasets.";
;;     void-sparqlEndpoint <http://example.org/sparql>;
;;     void-subset :DS_A;
;;     void-subset :DS_B;
;;     .
;; :MyDataset a void-Dataset;
;;     void-classPartition [ void-class foaf:Person; ];
;;     void-classPartition [ void-class foaf:Organization; ];
;;     void-propertyPartition [ void-property foaf:name; ];
;;     void-propertyPartition [ void-property foaf:member; ];
;;     void-propertyPartition [ void-property foaf:homepage; ];
;;     void-propertyPartition [ void-property rdf:type; ];
;;     .
;;
;; HTTP ETags: The relationship between emacs etags and http etags is
;; still somewhat hazy to me, so I will only sketch this.
(defvar mx-HTTPCachingETags 'mx-void-TechnicalFeature
  "The ETag or entity tag is part of HTTP, the protocol for the
  World Wide Web. It is one of several mechanisms that HTTP
  provides for web cache validation, and which allows a client to
  make conditional requests. --
  http://en.wikipedia.org/wiki/HTTP_ETag")

(setq mx-rdfs-label . "HTTP ETag support")

(setq mx-rdfs-comment "the dataset supports HTTP caching using
ETags"

(setq mx-rdfs-seeAlso
      "http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#")

(provide 'void)
;; eof
