## Customize Makefile settings for hto
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile




CITATION="'PMD Heat Treatment Ontology. Version $(VERSION), https://w3id.org/pmd/hto/'"


ALL_ANNOTATIONS=--ontology-iri https://w3id.org/pmd/hto/ -V https://w3id.org/pmd/hto/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation owl:versionInfo "$(VERSION)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  
#	--link-annotation owl:priorVersion https://w3id.org/pmd/hto/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../hto.owl $(ALL_ANNOTATIONS) --output ../../hto.owl && \
	$(ROBOT) annotate --input ../../hto.ttl $(ALL_ANNOTATIONS) --output ../../hto.ttl && \
	$(ROBOT) annotate --input ../../hto-simple.owl $(ALL_ANNOTATIONS) --output ../../hto-simple.owl && \
	$(ROBOT) annotate --input ../../hto-simple.ttl $(ALL_ANNOTATIONS) --output ../../hto-simple.ttl && \
	$(ROBOT) annotate --input ../../hto-full.owl $(ALL_ANNOTATIONS) --output ../../hto-full.owl && \
	$(ROBOT) annotate --input ../../hto-full.ttl $(ALL_ANNOTATIONS) --output ../../hto-full.ttl && \
	$(ROBOT) annotate --input ../../hto-base.owl $(ALL_ANNOTATIONS) --output ../../hto-base.owl && \
	$(ROBOT) annotate --input ../../hto-base.ttl $(ALL_ANNOTATIONS) --output ../../hto-base.ttl 


