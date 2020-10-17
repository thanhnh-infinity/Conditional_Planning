%=======================================================================
%PART 1 : Define classes that are used from CDAO ontology
%=======================================================================
class(network).
class(cDAOAnnotation).
class(setOfThings).
class(galledTree).
class(reticulateEvolution).
class(tree).
class(polyphyleticGroup).
class(monophyleticGroup).
class(characterStateDataMatrixAnnotation).
class(edgeAnnotation).
class(treeAnnotation).
class(tUAnnotation).
class(modelDescription).
class(setOfNodes).
class(setOfCharacters).
class(setOfObjects).
class(unrootedTree).
class(clade).
class(fullyResolvedTree).
class(rootedTree).
class(subtree).
class(reconcileTree).
class(bifurcatingTree).
class(speciesTree).
class(resource_Tree).
class(unresolvedTree).
class(paraphyleticGroup).
class(holophyleticGroup).
class(alignmentProcedure).
class(dataMatrixFormat).
class(edgeLength).
class(treeFormat).
class(treeProcedure).
class(taxonomicLink).
class(gapCost).
class(substitutionModel).
class(fullyResolvedUnrootedTree).
class(unresolvedUnrootedTree).
class(rootedSubtree).
class(starTree).
class(fullyResolvedRootedTree).
class(unresolvedRootedTree).
class(lineage).
class(unrootedSubtree).
class(resource_reconcileTree).
class(phylotasticETESpeciesTree).
class(resource_speciesTree).
class(resource_speciesTree_with_BranchLengths).
class(phylotasticSpeciesTree).
class(resource_imagesSpeciesTree).
class(resource_geneTree).
class(pHYLIPDataMatrix).
class(fASTADataMatrix).
class(genBankDataMatrix).
class(nexusDataBlock).
class(newickTree).
class(phyloTree).
class(sIMMAPTree).
class(nEXUSTreeBlock).
class(phylo4Tree).
class(pHYLIPTree).
class(jukesKantor).
class(kimura2Parameters).
class(gammaDistribution).


subClass(galledTree,network).
subClass(reticulateEvolution,network).
subClass(tree,network).
subClass(polyphyleticGroup,network).
subClass(monophyleticGroup,network).
subClass(characterStateDataMatrixAnnotation,cDAOAnnotation).
subClass(edgeAnnotation,cDAOAnnotation).
subClass(treeAnnotation,cDAOAnnotation).
subClass(tUAnnotation,cDAOAnnotation).
subClass(modelDescription,cDAOAnnotation).
subClass(setOfNodes,setOfThings).
subClass(setOfCharacters,setOfThings).
subClass(setOfObjects,setOfThings).
subClass(unrootedTree,tree).
subClass(clade,tree).
subClass(fullyResolvedTree,tree).
subClass(rootedTree,tree).
subClass(subtree,tree).
subClass(reconcileTree,tree).
subClass(bifurcatingTree,tree).
subClass(speciesTree,tree).
subClass(resource_Tree,tree).
subClass(unresolvedTree,tree).
subClass(paraphyleticGroup,monophyleticGroup).
subClass(holophyleticGroup,monophyleticGroup).
subClass(alignmentProcedure,characterStateDataMatrixAnnotation).
subClass(dataMatrixFormat,characterStateDataMatrixAnnotation).
subClass(edgeLength,edgeAnnotation).
subClass(treeFormat,treeAnnotation).
subClass(treeProcedure,treeAnnotation).
subClass(taxonomicLink,tUAnnotation).
subClass(gapCost,modelDescription).
subClass(substitutionModel,modelDescription).
subClass(fullyResolvedUnrootedTree,unrootedTree).
subClass(unresolvedUnrootedTree,unrootedTree).
subClass(rootedSubtree,rootedTree).
subClass(starTree,rootedTree).
subClass(fullyResolvedRootedTree,rootedTree).
subClass(unresolvedRootedTree,rootedTree).
subClass(lineage,rootedTree).
subClass(rootedSubtree,subtree).
subClass(unrootedSubtree,subtree).
subClass(resource_reconcileTree,reconcileTree).
subClass(fullyResolvedRootedTree,bifurcatingTree).
subClass(fullyResolvedUnrootedTree,bifurcatingTree).
subClass(phylotasticETESpeciesTree,speciesTree).
subClass(resource_speciesTree,speciesTree).
subClass(phylotasticSpeciesTree,speciesTree).
subClass(resource_speciesTree,resource_Tree).
subClass(resource_speciesTree_with_BranchLengths,resource_speciesTree).
subClass(resource_imagesSpeciesTree,resource_Tree).
subClass(resource_geneTree,resource_Tree).
subClass(resource_reconcileTree,resource_Tree).
subClass(unresolvedRootedTree,unresolvedTree).
subClass(unresolvedUnrootedTree,unresolvedTree).
subClass(pHYLIPDataMatrix,dataMatrixFormat).
subClass(fASTADataMatrix,dataMatrixFormat).
subClass(genBankDataMatrix,dataMatrixFormat).
subClass(nexusDataBlock,dataMatrixFormat).
subClass(newickTree,treeFormat).
subClass(phyloTree,treeFormat).
subClass(sIMMAPTree,treeFormat).
subClass(nEXUSTreeBlock,treeFormat).
subClass(phylo4Tree,treeFormat).
subClass(pHYLIPTree,treeFormat).
subClass(jukesKantor,substitutionModel).
subClass(kimura2Parameters,substitutionModel).
subClass(gammaDistribution,substitutionModel).

equalClasses(clade,holophyleticGroup).
equalClasses(bifurcatingTree,fullyResolvedTree).

%=======================================================================
%PART 2 : Define classes + instances are defined Operation
%=======================================================================
%Define class of operation
class(operationClassification).
class(species_operation).
class(names_operation).
class(taxon_operation).
class(list_operation).
class(tree_operation).
class(convert_operation).
class(look_up_operation).

class(species_information_operation).
class(names_resolution_operation).
class(names_extraction_operation).
class(names_conversion_operation).
class(taxon_to_species_operation).
class(list_update_operation).
class(list_creation_operation).
class(list_retrieval_operation).
class(tree_generation).
class(tree_information).
class(tree_comparison).
class(tree_visualization).
class(tree_transformation).
class(data_format_conversion).
class(look_up_taxonomy).
class(look_up_scientific_name).
class(look_up_location).


class(species_url_operation).
class(species_images_operation).
class(names_extraction_web).
class(names_extraction_text).
class(names_extraction_document).
class(names_extraction_tree).
class(taxon_to_species_by_genome).
class(taxon_to_species_by_country).
class(list_update_delete).
class(list_update_edit).
class(list_update_add).
class(tree_retrieval_operation).
class(tree_extraction_operation).
class(tree_reconciliation).
class(tree_support_studies).
class(tree_metadata_chronogram).
class(branch_length_comparison_operation).
class(symmetric_comparison_operation).
class(tree_scaling_operation).
class(gene_tree_scaling).
class(species_tree_scaling).
class(list_update_edit_list_content).
class(list_update_edit_list_metadata).
class(phylogeny_based_extraction).
class(taxonomy_based_extraction).
class(gene_based_extraction).
class(tree_publifications).
class(country_code_to_name).
class(scientific_name_to_taxonomy).
class(common_name_to_scientific_name).


%Define subclass of operation
subClass(species_operation,operationClassification).
subClass(names_operation,operationClassification).
subClass(taxon_operation,operationClassification).
subClass(list_operation,operationClassification).
subClass(tree_operation,operationClassification).
subClass(convert_operation,operationClassification).
subClass(look_up_operation,operationClassification).

subClass(species_information_operation,species_operation).
subClass(names_resolution_operation,names_operation).
subClass(names_extraction_operation,names_operation).
subClass(names_conversion_operation,names_operation).
subClass(taxon_to_species_operation,taxon_operation).
subClass(list_update_operation,list_operation).
subClass(list_creation_operation,list_operation).
subClass(list_retrieval_operation,list_operation).
subClass(tree_generation,tree_operation).
subClass(tree_information,tree_operation).
subClass(tree_comparison,tree_operation).
subClass(tree_visualization,tree_operation).
subClass(tree_transformation,tree_operation).
subClass(data_format_conversion,convert_operation).
subClass(names_conversion_operation,convert_operation).
subClass(look_up_taxonomy,look_up_operation).
subClass(look_up_scientific_name,look_up_operation).
subClass(look_up_location,look_up_operation).

subClass(species_url_operation,species_information_operation).
subClass(species_images_operation,species_information_operation).
subClass(names_extraction_web,names_extraction_operation).
subClass(names_extraction_text,names_extraction_operation).
subClass(names_extraction_document,names_extraction_operation).
subClass(names_extraction_tree,names_extraction_operation).
subClass(taxon_to_species_by_genome,taxon_to_species_operation).
subClass(taxon_to_species_by_country,taxon_to_species_operation).
subClass(list_update_delete,list_update_operation).
subClass(list_update_edit,list_update_operation).
subClass(list_update_add,list_update_operation).
subClass(tree_retrieval_operation,tree_generation).
subClass(tree_extraction_operation,tree_generation).
subClass(tree_reconciliation,tree_generation).
subClass(tree_support_studies,tree_information).
subClass(tree_metadata,tree_information).
subClass(tree_metadata_chronogram,tree_metadata).
subClass(branch_length_comparison_operation,tree_comparison).
subClass(symmetric_comparison_operation,tree_comparison).
subClass(tree_scaling_operation,tree_transformation).
subClass(gene_tree_scaling,tree_scaling_operation).
subClass(species_tree_scaling,tree_scaling_operation).
subClass(list_update_edit_list_content,list_update_edit).
subClass(list_update_edit_list_metadata,list_update_edit).
subClass(phylogeny_based_extraction,tree_extraction_operation).
subClass(taxonomy_based_extraction,tree_extraction_operation).
subClass(gene_based_extraction,tree_extraction_operation).
subClass(tree_publifications,tree_support_studies).
subClass(country_code_to_name,look_up_location).
subClass(scientific_name_to_taxonomy,look_up_taxonomy).
subClass(common_name_to_scientific_name,names_conversion_operation).

%Define class of <Service Providers> Web Service methods components
class(phylotastic_concept).
class(phylotastic_parameters).
class(phylotastic_data_structure).
class(phylotastic_resources).
class(phylotastic_data_format).
class(phylotastic_data_type).
class(phylotastic_components).
class(resource_SetOfThings).
class(resource_Object).
class(resource_SetOfNumbers).
class(resource_SetOfStrings).
class(resource_SetOfObjects).
class(resource_Document).
class(resource_Text).
class(resource_Image).
class(resource_URI).
class(resource_SetOfNames).
class(resource_SetOfURIs).
class(resource_SetOfPhylogenyTrees).
class(resource_SetOfSpeciesTrees).
class(resource_SetOfGeneTrees).
class(resource_PDF).
class(resource_MSDoc).
class(resource_String).
class(resource_Number).
class(resource_Boolean).
class(resource_AreSameTree).
class(resource_FreeText).
class(resource_SpeciesImage).
class(resource_contentURL).
class(resource_WebURL).
class(resource_SetOfScientificNames).
class(resource_SetOfGeneStrings).
class(resource_metadata_tree_scaling).
class(resource_Name).
class(resource_method).
class(phylomatic_method).
class(message).
class(ws_response_message).
class(resource_HTTPCode).
class(resource_ConnectionTime).
class(resource_SetOfResolvedName).
class(resource_SetOfTaxon).
class(resource_SetOfSciName).
class(resource_ScientificName).
class(resource_CountryName).
class(resource_SpeciesName).
class(resource_CommonName).
class(resource_CountryCode).
class(resource_resolvedName).
class(resource_taxon).
class(resource_sciName).


%Define subclass of <Service Provider> Web Service Concept
subClass(phylotastic_parameters,phylotastic_concept).
subClass(phylotastic_data_structure,phylotastic_concept).
subClass(phylotastic_resources,phylotastic_concept).
subClass(phylotastic_data_format,phylotastic_concept).
subClass(phylotastic_data_type,phylotastic_concept).
subClass(phylotastic_components,phylotastic_concept).
subClass(resource_SetOfThings,phylotastic_resources).
subClass(resource_Object,phylotastic_resources).
subClass(resource_SetOfNumbers,resource_SetOfThings).
subClass(resource_SetOfStrings,resource_SetOfThings).
subClass(resource_SetOfObjects,resource_SetOfThings).
subClass(resource_Document,resource_Object).
subClass(resource_Text,resource_Object).
subClass(resource_Image,resource_Object).
subClass(resource_URI,resource_Object).
subClass(resource_Tree,resource_Object).
subClass(resource_SetOfNames,resource_SetOfStrings).
subClass(resource_SetOfURIs,resource_SetOfObjects).
subClass(resource_SetOfPhylogenyTrees,resource_SetOfObjects).
subClass(resource_SetOfSpeciesTrees,resource_SetOfPhylogenyTrees).
subClass(resource_SetOfGeneTrees,resource_SetOfPhylogenyTrees).
subClass(resource_PDF,resource_Document).
subClass(resource_MSDoc,resource_Document).
subClass(resource_String,resource_Text).
subClass(resource_Number,resource_Text).
subClass(resource_Boolean,resource_Text).
subClass(resource_FreeText,resource_Text).
subClass(resource_SpeciesImage,resource_Image).
subClass(resource_contentURL,resource_URI).
subClass(resource_WebURL,resource_URI).
subClass(resource_SetOfScientificNames,resource_SetOfNames).
subClass(resource_SetOfGeneStrings,resource_SetOfNames).
subClass(resource_metadata_tree_scaling,resource_SetOfStrings).
subClass(resource_Name,resource_String).
subClass(resource_HTTPCode,resource_Number).
subClass(resource_ConnectionTime,resource_Number).
subClass(resource_CountryCode,resource_Number).
subClass(resource_AreSameTree,resource_Boolean).
subClass(resource_SetOfResolvedName,resource_SetOfScientificNames).
subClass(resource_SetOfTaxon,resource_SetOfScientificNames).
subClass(resource_SetOfSciName,resource_SetOfScientificNames).
subClass(phylomatic_method,resource_method).
subClass(resource_method,resource_String).
subClass(ws_response_message,message).
subClass(message,resource_String).
subClass(resource_SpeciesName,resource_Name).
subClass(resource_ScientificName,resource_SpeciesName).
subClass(resource_CommonName,resource_SpeciesName).
subClass(resource_CountryName,resource_Name).
subClass(resource_resolvedName,resource_ScientificName).
subClass(resource_taxon,resource_ScientificName).
subClass(resource_sciName,resource_ScientificName).
%subClass(resource_SetOfGeneStrings,resource_SetOfStrings).

%========================================================================
% PART 3 :  Instance of operations classes
%========================================================================
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_GNR_TNRS_POST).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_GET).
instance(phylotastic_ResolvedScientificNames_OT_TNRS_POST).
instance(phylotastic_GetAllSpeciesFromTaxon_OT_GET).

% Tree Extraction
instance(phylotastic_GetPhylogeneticTree_OT_GET).
instance(phylotastic_GetPhylogeneticTree_OT_POST).
instance(phylotastic_GetPhylogeneticTree_Phylomatic_GET).
instance(phylotastic_GetPhylogeneticTree_Phylomatic_POST).
instance(phylotastic_GetPhylogeneticTree_PhyloT_GET).
instance(phylotastic_GetPhylogeneticTree_PhyloT_POST).


instance(phylotastic_GetInformationURLsOfSpecies_EOL_POST).
instance(phylotastic_GetInformationURLsOfSpecies_EOL_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_GET).
instance(phylotastic_GetImageURLsOfSpecies_EOL_POST).
instance(phylotastic_FindScientificNamesFromWeb_GNRD_GET).
instance(phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
instance(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET).
instance(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET).

% Tree transformation
instance(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST).
instance(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET).

% Tree Information
instance(phylotastic_GetMetadata_Chronogram_DateLife_POST).

% Tree Comparison
instance(phylotastic_CompareTrees_Sym_Dendropy_POST).
instance(phylotastic_CompareTrees_BL_Dendropy_POST).

% Add for test - Co trong Ontoloy - But Do not have real services
instance(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET).
instance(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET).
instance(phylotastic_GetReconciliationTree_GET).
instance(phylotastic_GenerateGeneTree_From_Genes).
instance(phylotastic_GeneTree_Scaling).

% Add more for testing = CHUA CO TRONG OWL
instance(google_ConvertCountryCodeToName_GET).
instance(openTree_GetTaxonomyNameFromSciName_GET).

% For compare
instance(phylotastic_ResolvedScientificNames_FC).
instance(phylotastic_FindScientificNamesFromWeb_FC).
instance(phylotastic_GetPhylogeneticTree_FC).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% For compare
isInstanceOf_immediate(phylotastic_FindScientificNamesFromWeb_FC,names_extraction_web).
isInstanceOf_immediate(phylotastic_ResolvedScientificNames_FC,names_resolution_operation).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_FC,taxonomy_based_extraction).

% Detect instances of classes -- immediate class
isInstanceOf_immediate(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,names_resolution_operation).
isInstanceOf_immediate(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,names_resolution_operation).
isInstanceOf_immediate(phylotastic_ResolvedScientificNames_OT_TNRS_GET,names_resolution_operation).
isInstanceOf_immediate(phylotastic_ResolvedScientificNames_OT_TNRS_POST,names_resolution_operation).
isInstanceOf_immediate(phylotastic_GetAllSpeciesFromTaxon_OT_GET,taxon_to_species_operation).
%isInstanceOf(phylotastic_GetPhylogeneticTree_OT_GET,tree_generation).
%isInstanceOf(phylotastic_GetPhylogeneticTree_OT_POST,tree_generation).
isInstanceOf_immediate(phylotastic_GetInformationURLsOfSpecies_EOL_POST,species_url_operation).
isInstanceOf_immediate(phylotastic_GetInformationURLsOfSpecies_EOL_GET,species_url_operation).
isInstanceOf_immediate(phylotastic_GetImageURLsOfSpecies_EOL_GET,species_images_operation).
isInstanceOf_immediate(phylotastic_GetImageURLsOfSpecies_EOL_POST,species_images_operation).
isInstanceOf_immediate(phylotastic_FindScientificNamesFromWeb_GNRD_GET,names_extraction_web).
isInstanceOf_immediate(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,names_extraction_text).
isInstanceOf_immediate(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,taxon_to_species_by_genome).
isInstanceOf_immediate(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,taxon_to_species_by_country).
% Tree Extraction
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_OT_GET,taxonomy_based_extraction).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_OT_POST,taxonomy_based_extraction).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_Phylomatic_GET,phylogeny_based_extraction).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_Phylomatic_POST,phylogeny_based_extraction).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_PhyloT_GET,taxonomy_based_extraction).
isInstanceOf_immediate(phylotastic_GetPhylogeneticTree_PhyloT_POST,taxonomy_based_extraction).

% Tree Comparison
isInstanceOf_immediate(phylotastic_CompareTrees_Sym_Dendropy_POST,symmetric_comparison_operation).
isInstanceOf_immediate(phylotastic_CompareTrees_BL_Dendropy_POST,branch_length_comparison_operation).

% Tree Information
isInstanceOf_immediate(phylotastic_GetMetadata_Chronogram_DateLife_POST,tree_metadata_chronogram).


isInstanceOf_immediate(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET,common_name_to_scientific_name).

% Tree Transformation
%% tree_transformation/tree_scaling_operation/species_tree_scaling
isInstanceOf_immediate(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,species_tree_scaling).


% Add more for testing - CHUA CO TRONG OWL
isInstanceOf_immediate(google_ConvertCountryCodeToName_GET,country_code_to_name).
isInstanceOf_immediate(openTree_GetTaxonomyNameFromSciName_GET,scientific_name_to_taxonomy).



% Add for test - Co trong Ontoloy - But Do not have real services
isInstanceOf_immediate(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,names_extraction_web).
isInstanceOf_immediate(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,names_extraction_tree).
isInstanceOf_immediate(phylotastic_GetReconciliationTree_GET,tree_reconciliation).
isInstanceOf_immediate(phylotastic_GenerateGeneTree_From_Genes,gene_based_extraction).
isInstanceOf_immediate(phylotastic_GeneTree_Scaling,gene_tree_scaling).

%========================================================================
% PART 4.1 :  Define hierarchy classes of DATA FORMAT
%           Define which instance operation has DATA FORMAT of INPUT/Output
%========================================================================
% Class hierarchy of data format
class(list_of_things).
class(list_of_strings).
% classes of tree are defined above part.

class(number).
class(double).
class(integer).
class(http_url).
class(uri).
class(string).
class(boolean).

class(plain_text).
class(raw_text).
class(encrypted_text).
subClass(plain_text,raw_text).
subClass(encrypted_text,raw_text).


subClass(integer,number).
subClass(double,number).
subClass(http_url,uri).
subClass(list_of_strings,list_of_things).

% For compare
instance_operation_has_input_has_data_format(phylotastic_FindScientificNamesFromWeb_FC, resource_WebURL, http_url).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_FC, resource_SetOfSciName, raw_names_format_FC).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_FC, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_FC, resource_ConnectionTime, integer).

instance_operation_has_input_has_data_format(phylotastic_ResolvedScientificNames_FC, resource_SetOfSciName, raw_names_format_FC).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_FC, resource_SetOfTaxon, resolved_names_format_FC).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_FC, resource_SetOfResolvedName, resolved_names_format_FC).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_FC, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_FC, resource_SetOfTaxon, resolved_names_format_FC).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_FC, resource_speciesTree, compare_tree_format).


% concrete operation has data format == CHUA CO TRONG OWL - Co kha nang ko the co trong OWL
instance_operation_has_input_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_WebURL, http_url).
%instance_operation_has_input_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_WebURL, data_format_D).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_SetOfSciName, raw_names_format_2).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_ConnectionTime, integer).
%instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_GNRD_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET, resource_FreeText, plain_text).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET, resource_SetOfSciName, raw_names_format_1).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET, resource_ConnectionTime, integer).
%instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET, resource_SetOfSciName, raw_names_format_GNR).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET, resource_SetOfTaxon, resolved_names_format_2).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET, resource_SetOfResolvedName, resolved_names_format_2).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET, resource_HTTPCode, integer).
%instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST, resource_SetOfSciName, raw_names_format_GNR).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST, resource_SetOfTaxon, resolved_names_format_GNR).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST, resource_SetOfResolvedName, resolved_names_format_GNR).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST, resource_HTTPCode, integer).
%instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_GNR_TNRS_POST, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_GET, resource_SetOfSciName, raw_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_GET, resource_SetOfTaxon, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_GET, resource_SetOfResolvedName, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_GET, resource_HTTPCode, integer).
%instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_POST, resource_SetOfSciName, raw_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_POST, resource_SetOfTaxon, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_POST, resource_SetOfResolvedName, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_POST, resource_HTTPCode, integer).
%instance_operation_has_output_has_data_format(phylotastic_ResolvedScientificNames_OT_TNRS_POST, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_GetAllSpeciesFromTaxon_OT_GET, resource_taxon, string).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_OT_GET, resource_SetOfSciName, list_of_strings).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_OT_GET, resource_taxon, string).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_OT_GET, resource_HTTPCode, integer).

% ------Tree Extraction
instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_OT_GET, resource_SetOfTaxon, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_GET, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_GET, resource_Tree, nmsu_tree_format).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_GET, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_OT_POST, resource_SetOfTaxon, resolved_names_format_OT).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_POST, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_POST, resource_Tree, nmsu_tree_format).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_OT_POST, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_GET, resource_SetOfTaxon, resolved_names_format_PhyloT).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_GET, resource_speciesTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_GET, resource_Tree, newickTree).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_GET, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_POST, resource_SetOfTaxon, resolved_names_format_PhyloT).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_POST, resource_speciesTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_POST, resource_Tree, newickTree).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_PhyloT_POST, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_GET, resource_SetOfResolvedName, resolved_names_format_Phylomatic).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_GET, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_GET, resource_Tree, nmsu_tree_format).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_GET, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_POST, resource_SetOfResolvedName, resolved_names_format_Phylomatic).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_POST, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_POST, resource_Tree, nmsu_tree_format).
%instance_operation_has_output_has_data_format(phylotastic_GetPhylogeneticTree_Phylomatic_POST, resource_HTTPCode, integer).

%-----

instance_operation_has_input_has_data_format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET, resource_taxon, string).
instance_operation_has_input_has_data_format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET, resource_CountryName, string).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET, resource_SetOfSciName, list_of_strings).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET, resource_taxon, string).
instance_operation_has_output_has_data_format(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET, resource_taxon, string).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET, resource_SetOfSciName, list_of_strings).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET, resource_taxon, string).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET, resource_HTTPCode, integer).

instance_operation_has_input_has_data_format(google_ConvertCountryCodeToName_GET, resource_CountryCode, integer).
instance_operation_has_output_has_data_format(google_ConvertCountryCodeToName_GET, resource_CountryName, string).

instance_operation_has_input_has_data_format(openTree_GetTaxonomyNameFromSciName_GET, resource_ScientificName, string).
instance_operation_has_output_has_data_format(openTree_GetTaxonomyNameFromSciName_GET, resource_taxon, string).

instance_operation_has_input_has_data_format(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET, resource_CommonName, string).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET, resource_ScientificName, string).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_GetSpeciesScientificNameFromCommonName_NCBI_GET, resource_WebURL, http_url).


instance_operation_has_input_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, resource_speciesTree, newickTree).
instance_operation_has_input_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, resource_speciesTree, compare_tree_format).
%instance_operation_has_input_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, resource_AreSameTree, boolean).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_Sym_Dendropy_POST, ws_response_message, string).

instance_operation_has_input_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, resource_speciesTree, newickTree).
instance_operation_has_input_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, resource_speciesTree, compare_tree_format).
%instance_operation_has_input_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, resource_speciesTree, nmsu_tree_format).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, resource_AreSameTree, boolean).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_CompareTrees_BL_Dendropy_POST, ws_response_message, string).

instance_operation_has_input_has_data_format(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST, phylomatic_method, string).
instance_operation_has_input_has_data_format(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST, resource_speciesTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST, resource_speciesTree_with_BranchLengths, newickTree).

instance_operation_has_input_has_data_format(phylotastic_GetMetadata_Chronogram_DateLife_POST, resource_speciesTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GetMetadata_Chronogram_DateLife_POST, resource_metadata_tree_scaling, list_of_strings).

%%%
% Add more for testing == CHUA CO TRONG OWL
%%%

instance_operation_has_input_has_data_format(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET, resource_WebURL, data_format_E).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET, resource_SetOfSciName, raw_names_format_2).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET, resource_ConnectionTime, integer).
%instance_operation_has_output_has_data_format(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET, resource_geneTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET, resource_SetOfSciName, raw_names_format_2).
instance_operation_has_output_has_data_format(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET, resource_HTTPCode, integer).
instance_operation_has_output_has_data_format(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET, resource_ConnectionTime, integer).
%instance_operation_has_output_has_data_format(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET, resource_SetOfNames, list_of_strings).

instance_operation_has_input_has_data_format(phylotastic_GetReconciliationTree_GET, resource_geneTree, newickTree).
instance_operation_has_input_has_data_format(phylotastic_GetReconciliationTree_GET, resource_speciesTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GetReconciliationTree_GET, resource_reconcileTree, newickTree).

instance_operation_has_input_has_data_format(phylotastic_GenerateGeneTree_From_Genes, resource_SetOfGeneStrings, list_of_strings).
instance_operation_has_output_has_data_format(phylotastic_GenerateGeneTree_From_Genes, resource_geneTree, phyloTree).
instance_operation_has_output_has_data_format(phylotastic_GenerateGeneTree_From_Genes, resource_geneTree, phyloTree).

instance_operation_has_input_has_data_format(phylotastic_GeneTree_Scaling, resource_geneTree, newickTree).
instance_operation_has_output_has_data_format(phylotastic_GeneTree_Scaling, resource_geneTree, newickTree).

%=======================================================================
% PART 4.2 :  Defined QoS values for each concrete service operation which include tuple(Response Time,Throughput, Reliability, Availability)
%             Structure : has_qos_response_time(<concrete service operation>,<QoS Value>).
%                         has_qos_throughput(<concrete service operation>,<QoS Value>).
%                         has_qos_reliability(<concrete service operation>,<QoS Value>).
%                         has_qos_availability(<concrete service operation>,<QoS Value>).
%=======================================================================

%-------------For Response Time-----------------------------------------

%% For compare
has_qos_response_time(phylotastic_ResolvedScientificNames_FC,710).
has_qos_response_time(phylotastic_FindScientificNamesFromWeb_FC,5000).
has_qos_response_time(phylotastic_GetPhylogeneticTree_FC,4000).



%has_qos_response_time(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,"0.68").
%has_qos_response_time(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,"0.68").
%has_qos_response_time(phylotastic_ResolvedScientificNames_OT_TNRS_GET,"0.44").
%has_qos_response_time(phylotastic_ResolvedScientificNames_OT_TNRS_POST,"0.44").
%has_qos_response_time(phylotastic_GetAllSpeciesFromTaxon_OT_GET,"0.33").

has_qos_response_time(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,710).
has_qos_response_time(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,680).
has_qos_response_time(phylotastic_ResolvedScientificNames_OT_TNRS_GET,480).
has_qos_response_time(phylotastic_ResolvedScientificNames_OT_TNRS_POST,440).
has_qos_response_time(phylotastic_GetAllSpeciesFromTaxon_OT_GET,330).

% Tree Extraction
%has_qos_response_time(phylotastic_GetPhylogeneticTree_OT_GET,"4.04").
%has_qos_response_time(phylotastic_GetPhylogeneticTree_OT_POST,"4.04").
%has_qos_response_time(phylotastic_GetPhylogeneticTree_PhyloT_GET,"3.99").
%has_qos_response_time(phylotastic_GetPhylogeneticTree_PhyloT_POST,"3.99").
%has_qos_response_time(phylotastic_GetPhylogeneticTree_Phylomatic_GET,"2.03").
%has_qos_response_time(phylotastic_GetPhylogeneticTree_Phylomatic_POST,"2.03").

has_qos_response_time(phylotastic_GetPhylogeneticTree_OT_GET,4210).
has_qos_response_time(phylotastic_GetPhylogeneticTree_OT_POST,4040).
has_qos_response_time(phylotastic_GetPhylogeneticTree_PhyloT_GET,3990).
has_qos_response_time(phylotastic_GetPhylogeneticTree_PhyloT_POST,4010).
has_qos_response_time(phylotastic_GetPhylogeneticTree_Phylomatic_GET,2133).
has_qos_response_time(phylotastic_GetPhylogeneticTree_Phylomatic_POST,2030).

%has_qos_response_time(phylotastic_GetInformationURLsOfSpecies_EOL_POST,"0.31").
%has_qos_response_time(phylotastic_GetInformationURLsOfSpecies_EOL_GET,"0.31").
%has_qos_response_time(phylotastic_GetImageURLsOfSpecies_EOL_GET,"1.69").
%has_qos_response_time(phylotastic_GetImageURLsOfSpecies_EOL_POST,"1.69").
%has_qos_response_time(phylotastic_FindScientificNamesFromWeb_GNRD_GET,"4.81").
%has_qos_response_time(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,"0.45").
%has_qos_response_time(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,"2.1").
%has_qos_response_time(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,"0.32").
%has_qos_response_time(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,"3.56").

has_qos_response_time(phylotastic_GetInformationURLsOfSpecies_EOL_POST,310).
has_qos_response_time(phylotastic_GetInformationURLsOfSpecies_EOL_GET,320).
has_qos_response_time(phylotastic_GetImageURLsOfSpecies_EOL_GET,1690).
has_qos_response_time(phylotastic_GetImageURLsOfSpecies_EOL_POST,1710).
has_qos_response_time(phylotastic_FindScientificNamesFromWeb_GNRD_GET,4810).
has_qos_response_time(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,450).
has_qos_response_time(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,2100).
has_qos_response_time(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,320).
has_qos_response_time(phylotastic_CompareTrees_Sym_Dendropy_POST,2000).
has_qos_response_time(phylotastic_CompareTrees_BL_Dendropy_POST,3000).
has_qos_response_time(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,3560).
has_qos_response_time(phylotastic_GetMetadata_Chronogram_DateLife_POST,1830).

% Add for test - Co trong Ontoloy - But Do not have real services
%has_qos_response_time(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,"5.1").
%has_qos_response_time(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,"15.67").
%has_qos_response_time(phylotastic_GetReconciliationTree_GET,"6.12").
%has_qos_response_time(phylotastic_GenerateGeneTree_From_Genes,"5.05").
%has_qos_response_time(phylotastic_GeneTree_Scaling,"4.2").

has_qos_response_time(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,5100).
has_qos_response_time(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,15670).
has_qos_response_time(phylotastic_GetReconciliationTree_GET,6120).
has_qos_response_time(phylotastic_GenerateGeneTree_From_Genes,5050).
has_qos_response_time(phylotastic_GeneTree_Scaling,4200).

% Add more for testing = CHUA CO TRONG OWL
%has_qos_response_time(google_ConvertCountryCodeToName_GET,"0").
%has_qos_response_time(openTree_GetTaxonomyNameFromSciName_GET,"0").
%has_qos_response_time(openTree_GetScientificNameFromAName_GET,"0").

has_qos_response_time(google_ConvertCountryCodeToName_GET,1000).
has_qos_response_time(openTree_GetTaxonomyNameFromSciName_GET,2000).
has_qos_response_time(openTree_GetScientificNameFromAName_GET,300).

% Respontime values for Data Conversion services
has_qos_response_time(convert_df_text_format_raw_to_plain,150).
has_qos_response_time(convert_df_sci_names_format_1_to_3,152).
has_qos_response_time(convert_df_sci_names_format_3_to_5,155).
has_qos_response_time(convert_df_sci_names_format_5_to_GNR,170).
has_qos_response_time(convert_df_sci_names_format_5_to_OT,182).
has_qos_response_time(convert_df_sci_names_format_2_to_4,169).
has_qos_response_time(convert_df_sci_names_format_4_to_6,157).
has_qos_response_time(convert_df_sci_names_format_6_to_GNR,181).
has_qos_response_time(convert_df_sci_names_format_6_to_OT,188).

has_qos_response_time(convert_df_resolved_names_format_GNR_to_OT,188).
has_qos_response_time(convert_df_resolved_names_format_GNR_to_Phylomatic,187).
has_qos_response_time(convert_df_resolved_names_format_GNR_to_PhyloT,182).
has_qos_response_time(convert_df_resolved_names_format_1_to_3,173).
has_qos_response_time(convert_df_resolved_names_format_3_to_5,172).
has_qos_response_time(convert_df_resolved_names_format_5_to_Phylomatic,177).
has_qos_response_time(convert_df_resolved_names_format_5_to_PhyloT,181).
has_qos_response_time(convert_df_resolved_names_format_5_to_OT,175).
has_qos_response_time(convert_df_resolved_names_format_2_to_4,169).
has_qos_response_time(convert_df_resolved_names_format_4_to_6,168).
has_qos_response_time(convert_df_resolved_names_format_6_to_ALL_COMBO,174).

has_qos_response_time(convert_df_taxons_format_GNR_to_OT,188).
has_qos_response_time(convert_df_taxons_format_GNR_to_Phylomatic,187).
has_qos_response_time(convert_df_taxons_format_GNR_to_PhyloT,182).
has_qos_response_time(convert_df_taxons_format_1_to_3,173).
has_qos_response_time(convert_df_taxons_format_3_to_5,172).
has_qos_response_time(convert_df_taxons_format_5_to_Phylomatic,177).
has_qos_response_time(convert_df_taxons_format_5_to_PhyloT,181).
has_qos_response_time(convert_df_taxons_format_5_to_OT,175).
has_qos_response_time(convert_df_taxons_format_2_to_4,169).
has_qos_response_time(convert_df_taxons_format_4_to_6,168).
has_qos_response_time(convert_df_taxons_format_6_to_ALL_COMBO,174).

has_qos_response_time(convert_tree_format_NewickTree_to_ALL_COMBO,251).
has_qos_response_time(convert_tree_format_PhyloTree_to_NMSU,255).
has_qos_response_time(convert_tree_format_NMSU_to_NewickTree,260).
has_qos_response_time(convert_tree_format_PhyloTree_to_phylo4Tree,277).
has_qos_response_time(convert_tree_format_Phylo4Tree_to_PhyloTree,210).
has_qos_response_time(convert_tree_format_1_to_2,200).
has_qos_response_time(convert_tree_format_2_to_pHYLIPTree,212).
has_qos_response_time(convert_tree_format_pHYLIPTree_to_PhyloTree,301).

has_qos_response_time(convert_species_tree_format_NewickTree_to_ALL_COMBO,251).
has_qos_response_time(convert_species_tree_format_PhyloTree_to_NMSU,255).
has_qos_response_time(convert_species_tree_format_NMSU_to_NewickTree,260).
has_qos_response_time(convert_species_tree_format_PhyloTree_to_phylo4Tree,277).
has_qos_response_time(convert_species_tree_format_Phylo4Tree_to_PhyloTree,210).
has_qos_response_time(convert_species_tree_format_1_to_2,200).
has_qos_response_time(convert_species_tree_format_2_to_pHYLIPTree,212).
has_qos_response_time(convert_species_tree_format_pHYLIPTree_to_PhyloTree,301).


has_qos_response_time(convert_gene_tree_format_NewickTree_to_ALL_COMBO,251).
has_qos_response_time(convert_gene_tree_format_PhyloTree_to_NMSU,255).
has_qos_response_time(convert_gene_tree_format_NMSU_to_NewickTree,265).
has_qos_response_time(convert_gene_tree_format_PhyloTree_to_phylo4Tree,272).
has_qos_response_time(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,211).
has_qos_response_time(convert_gene_tree_format_1_to_2,200).
has_qos_response_time(convert_gene_tree_format_2_to_pHYLIPTree,212).
has_qos_response_time(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,303).

%-------------For Throughput--------------------------------------------
%% For compare
has_qos_throughput(phylotastic_ResolvedScientificNames_FC,19000).
has_qos_throughput(phylotastic_FindScientificNamesFromWeb_FC,20000).
has_qos_throughput(phylotastic_GetPhylogeneticTree_FC,4000).


%has_qos_throughput(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,"19.41").
%has_qos_throughput(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,"19.41").
%has_qos_throughput(phylotastic_ResolvedScientificNames_OT_TNRS_GET,"27.49").
%has_qos_throughput(phylotastic_ResolvedScientificNames_OT_TNRS_POST,"27.49").
%has_qos_throughput(phylotastic_GetAllSpeciesFromTaxon_OT_GET,"28.92").

has_qos_throughput(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,19410).
has_qos_throughput(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,20000).
has_qos_throughput(phylotastic_ResolvedScientificNames_OT_TNRS_GET,27490).
has_qos_throughput(phylotastic_ResolvedScientificNames_OT_TNRS_POST,28000).
has_qos_throughput(phylotastic_GetAllSpeciesFromTaxon_OT_GET,28920).

% Tree Extraction
%has_qos_throughput(phylotastic_GetPhylogeneticTree_OT_GET,"4.33").
%has_qos_throughput(phylotastic_GetPhylogeneticTree_OT_POST,"4.33").
%has_qos_throughput(phylotastic_GetPhylogeneticTree_PhyloT_GET,"1.25").
%has_qos_throughput(phylotastic_GetPhylogeneticTree_PhyloT_POST,"1.25").
%has_qos_throughput(phylotastic_GetPhylogeneticTree_Phylomatic_GET,"5.62").
%has_qos_throughput(phylotastic_GetPhylogeneticTree_Phylomatic_POST,"5.62").

has_qos_throughput(phylotastic_GetPhylogeneticTree_OT_GET,4330).
has_qos_throughput(phylotastic_GetPhylogeneticTree_OT_POST,4330).
has_qos_throughput(phylotastic_GetPhylogeneticTree_PhyloT_GET,1250).
has_qos_throughput(phylotastic_GetPhylogeneticTree_PhyloT_POST,1250).
has_qos_throughput(phylotastic_GetPhylogeneticTree_Phylomatic_GET,5620).
has_qos_throughput(phylotastic_GetPhylogeneticTree_Phylomatic_POST,6200).

%has_qos_throughput(phylotastic_GetInformationURLsOfSpecies_EOL_POST,"22.92").
%has_qos_throughput(phylotastic_GetInformationURLsOfSpecies_EOL_GET,"22.92").
%has_qos_throughput(phylotastic_GetImageURLsOfSpecies_EOL_GET,"5.55").
%has_qos_throughput(phylotastic_GetImageURLsOfSpecies_EOL_POST,"5.55").
%has_qos_throughput(phylotastic_FindScientificNamesFromWeb_GNRD_GET,"5.56").
%has_qos_throughput(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,"27.17").
%has_qos_throughput(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,"6.6").
%has_qos_throughput(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,"28.56").
%has_qos_throughput(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,"0.91").

has_qos_throughput(phylotastic_GetInformationURLsOfSpecies_EOL_POST,2292).
has_qos_throughput(phylotastic_GetInformationURLsOfSpecies_EOL_GET,2292).
has_qos_throughput(phylotastic_GetImageURLsOfSpecies_EOL_GET,5550).
has_qos_throughput(phylotastic_GetImageURLsOfSpecies_EOL_POST,5550).
has_qos_throughput(phylotastic_FindScientificNamesFromWeb_GNRD_GET,5560).
has_qos_throughput(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,27170).
has_qos_throughput(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,6600).
has_qos_throughput(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,28560).
has_qos_throughput(phylotastic_CompareTrees_Sym_Dendropy_POST,12500).
has_qos_throughput(phylotastic_CompareTrees_BL_Dendropy_POST,13500).
has_qos_throughput(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,910).
has_qos_throughput(phylotastic_GetMetadata_Chronogram_DateLife_POST,1200).

% Add for test - Co trong Ontoloy - But Do not have real services
%has_qos_throughput(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,"23.8").
%has_qos_throughput(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,"27.78").
%has_qos_throughput(phylotastic_GetReconciliationTree_GET,"15.12").
%has_qos_throughput(phylotastic_GenerateGeneTree_From_Genes,"1.78").
%has_qos_throughput(phylotastic_GeneTree_Scaling,"6.3").

has_qos_throughput(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,23800).
has_qos_throughput(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,27780).
has_qos_throughput(phylotastic_GetReconciliationTree_GET,15120).
has_qos_throughput(phylotastic_GenerateGeneTree_From_Genes,1780).
has_qos_throughput(phylotastic_GeneTree_Scaling,6300).

% Add more for testing = CHUA CO TRONG OWL
%has_qos_throughput(google_ConvertCountryCodeToName_GET,"0").
%has_qos_throughput(openTree_GetTaxonomyNameFromSciName_GET,"0").
%has_qos_throughput(openTree_GetScientificNameFromAName_GET,"0").

has_qos_throughput(google_ConvertCountryCodeToName_GET,0).
has_qos_throughput(openTree_GetTaxonomyNameFromSciName_GET,0).
has_qos_throughput(openTree_GetScientificNameFromAName_GET,0).


% Throughput values for Data Conversion services
has_qos_throughput(convert_df_text_format_raw_to_plain,20000).
has_qos_throughput(convert_df_sci_names_format_1_to_3,20000).
has_qos_throughput(convert_df_sci_names_format_3_to_5,20000).
has_qos_throughput(convert_df_sci_names_format_5_to_GNR,20000).
has_qos_throughput(convert_df_sci_names_format_5_to_OT,20000).
has_qos_throughput(convert_df_sci_names_format_2_to_4,20000).
has_qos_throughput(convert_df_sci_names_format_4_to_6,20000).
has_qos_throughput(convert_df_sci_names_format_6_to_GNR,20000).
has_qos_throughput(convert_df_sci_names_format_6_to_OT,20000).

has_qos_throughput(convert_df_resolved_names_format_GNR_to_OT,20000).
has_qos_throughput(convert_df_resolved_names_format_GNR_to_Phylomatic,20000).
has_qos_throughput(convert_df_resolved_names_format_GNR_to_PhyloT,20000).
has_qos_throughput(convert_df_resolved_names_format_1_to_3,20000).
has_qos_throughput(convert_df_resolved_names_format_3_to_5,20000).
has_qos_throughput(convert_df_resolved_names_format_5_to_Phylomatic,20000).
has_qos_throughput(convert_df_resolved_names_format_5_to_PhyloT,20000).
has_qos_throughput(convert_df_resolved_names_format_5_to_OT,20000).
has_qos_throughput(convert_df_resolved_names_format_2_to_4,20000).
has_qos_throughput(convert_df_resolved_names_format_4_to_6,20000).
has_qos_throughput(convert_df_resolved_names_format_6_to_ALL_COMBO,20000).

has_qos_throughput(convert_df_taxons_format_GNR_to_OT,20000).
has_qos_throughput(convert_df_taxons_format_GNR_to_Phylomatic,20000).
has_qos_throughput(convert_df_taxons_format_GNR_to_PhyloT,20000).
has_qos_throughput(convert_df_taxons_format_1_to_3,20000).
has_qos_throughput(convert_df_taxons_format_3_to_5,20000).
has_qos_throughput(convert_df_taxons_format_5_to_Phylomatic,20000).
has_qos_throughput(convert_df_taxons_format_5_to_PhyloT,20000).
has_qos_throughput(convert_df_taxons_format_5_to_OT,20000).
has_qos_throughput(convert_df_taxons_format_2_to_4,20000).
has_qos_throughput(convert_df_taxons_format_4_to_6,20000).
has_qos_throughput(convert_df_taxons_format_6_to_ALL_COMBO,20000).

has_qos_throughput(convert_tree_format_NewickTree_to_ALL_COMBO,20000).
has_qos_throughput(convert_tree_format_PhyloTree_to_NMSU,20000).
has_qos_throughput(convert_tree_format_NMSU_to_NewickTree,20000).
has_qos_throughput(convert_tree_format_PhyloTree_to_phylo4Tree,20000).
has_qos_throughput(convert_tree_format_Phylo4Tree_to_PhyloTree,20000).
has_qos_throughput(convert_tree_format_1_to_2,20000).
has_qos_throughput(convert_tree_format_2_to_pHYLIPTree,20000).
has_qos_throughput(convert_tree_format_pHYLIPTree_to_PhyloTree,20000).

has_qos_throughput(convert_species_tree_format_NewickTree_to_ALL_COMBO,20000).
has_qos_throughput(convert_species_tree_format_PhyloTree_to_NMSU,20000).
has_qos_throughput(convert_species_tree_format_NMSU_to_NewickTree,20000).
has_qos_throughput(convert_species_tree_format_PhyloTree_to_phylo4Tree,20000).
has_qos_throughput(convert_species_tree_format_Phylo4Tree_to_PhyloTree,20000).
has_qos_throughput(convert_species_tree_format_1_to_2,20000).
has_qos_throughput(convert_species_tree_format_2_to_pHYLIPTree,20000).
has_qos_throughput(convert_species_tree_format_pHYLIPTree_to_PhyloTree,20000).


has_qos_throughput(convert_gene_tree_format_NewickTree_to_ALL_COMBO,20000).
has_qos_throughput(convert_gene_tree_format_PhyloTree_to_NMSU,20000).
has_qos_throughput(convert_gene_tree_format_NMSU_to_NewickTree,20000).
has_qos_throughput(convert_gene_tree_format_PhyloTree_to_phylo4Tree,20000).
has_qos_throughput(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,20000).
has_qos_throughput(convert_gene_tree_format_1_to_2,20000).
has_qos_throughput(convert_gene_tree_format_2_to_pHYLIPTree,20000).
has_qos_throughput(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,20000).

%-------------For Reliability-------------------------------------------

%% For compare
has_qos_reliability(phylotastic_ResolvedScientificNames_FC,577000).
has_qos_reliability(phylotastic_FindScientificNamesFromWeb_FC,600000).
has_qos_reliability(phylotastic_GetPhylogeneticTree_FC,120000).


%has_qos_reliability(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,"576.44").
%has_qos_reliability(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,"576.44").
%has_qos_reliability(phylotastic_ResolvedScientificNames_OT_TNRS_GET,"576.48").
%has_qos_reliability(phylotastic_ResolvedScientificNames_OT_TNRS_POST,"576.48").
%has_qos_reliability(phylotastic_GetAllSpeciesFromTaxon_OT_GET,"577.76").

has_qos_reliability(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,576440).
has_qos_reliability(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,576440).
has_qos_reliability(phylotastic_ResolvedScientificNames_OT_TNRS_GET,576480).
has_qos_reliability(phylotastic_ResolvedScientificNames_OT_TNRS_POST,576480).
has_qos_reliability(phylotastic_GetAllSpeciesFromTaxon_OT_GET,577760).

% Tree Extraction
%has_qos_reliability(phylotastic_GetPhylogeneticTree_OT_GET,"577.45").
%has_qos_reliability(phylotastic_GetPhylogeneticTree_OT_POST,"577.45").
%has_qos_reliability(phylotastic_GetPhylogeneticTree_PhyloT_GET,"586.09").
%has_qos_reliability(phylotastic_GetPhylogeneticTree_PhyloT_POST,"586.09").
%has_qos_reliability(phylotastic_GetPhylogeneticTree_Phylomatic_GET,"586.08").
%has_qos_reliability(phylotastic_GetPhylogeneticTree_Phylomatic_POST,"586.08").

has_qos_reliability(phylotastic_GetPhylogeneticTree_OT_GET,577450).
has_qos_reliability(phylotastic_GetPhylogeneticTree_OT_POST,575450).
has_qos_reliability(phylotastic_GetPhylogeneticTree_PhyloT_GET,586090).
has_qos_reliability(phylotastic_GetPhylogeneticTree_PhyloT_POST,588090).
has_qos_reliability(phylotastic_GetPhylogeneticTree_Phylomatic_GET,583080).
has_qos_reliability(phylotastic_GetPhylogeneticTree_Phylomatic_POST,586080).

%has_qos_reliability(phylotastic_GetInformationURLsOfSpecies_EOL_POST,"577.93").
%has_qos_reliability(phylotastic_GetInformationURLsOfSpecies_EOL_GET,"577.93").
%has_qos_reliability(phylotastic_GetImageURLsOfSpecies_EOL_GET,"577.84").
%has_qos_reliability(phylotastic_GetImageURLsOfSpecies_EOL_POST,"577.84").
%has_qos_reliability(phylotastic_FindScientificNamesFromWeb_GNRD_GET,"576.3").
%has_qos_reliability(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,"576.34").
%has_qos_reliability(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,"577.81").
%has_qos_reliability(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,"577.78").
%has_qos_reliability(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,"1173.06").


has_qos_reliability(phylotastic_GetInformationURLsOfSpecies_EOL_POST,572930).
has_qos_reliability(phylotastic_GetInformationURLsOfSpecies_EOL_GET,577930).
has_qos_reliability(phylotastic_GetImageURLsOfSpecies_EOL_GET,577840).
has_qos_reliability(phylotastic_GetImageURLsOfSpecies_EOL_POST,580840).
has_qos_reliability(phylotastic_FindScientificNamesFromWeb_GNRD_GET,576300).
has_qos_reliability(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,576340).
has_qos_reliability(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,577810).
has_qos_reliability(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,577780).
has_qos_reliability(phylotastic_CompareTrees_Sym_Dendropy_POST,520120).
has_qos_reliability(phylotastic_CompareTrees_BL_Dendropy_POST,510120).
has_qos_reliability(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,1173060).
has_qos_reliability(phylotastic_GetMetadata_Chronogram_DateLife_POST,1173060).

% Add for test - Co trong Ontoloy - But Do not have real services
%has_qos_reliability(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,"600.0").
%has_qos_reliability(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,"576.41").
%has_qos_reliability(phylotastic_GetReconciliationTree_GET,"580.87").
%has_qos_reliability(phylotastic_GenerateGeneTree_From_Genes,"300.98").
%has_qos_reliability(phylotastic_GeneTree_Scaling,"577.23").

has_qos_reliability(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,600000).
has_qos_reliability(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,576410).
has_qos_reliability(phylotastic_GetReconciliationTree_GET,580870).
has_qos_reliability(phylotastic_GenerateGeneTree_From_Genes,300980).
has_qos_reliability(phylotastic_GeneTree_Scaling,577230).

% Add more for testing = CHUA CO TRONG OWL
%has_qos_reliability(google_ConvertCountryCodeToName_GET,"0.0").
%has_qos_reliability(openTree_GetTaxonomyNameFromSciName_GET,"0.0").
%has_qos_reliability(openTree_GetScientificNameFromAName_GET,"0.0").

has_qos_reliability(google_ConvertCountryCodeToName_GET,0).
has_qos_reliability(openTree_GetTaxonomyNameFromSciName_GET,0).
has_qos_reliability(openTree_GetScientificNameFromAName_GET,0).

% Reliability values for Data Conversion services
has_qos_reliability(convert_df_text_format_raw_to_plain,570000).
has_qos_reliability(convert_df_sci_names_format_1_to_3,570000).
has_qos_reliability(convert_df_sci_names_format_3_to_5,570000).
has_qos_reliability(convert_df_sci_names_format_5_to_GNR,570000).
has_qos_reliability(convert_df_sci_names_format_5_to_OT,570000).
has_qos_reliability(convert_df_sci_names_format_2_to_4,570000).
has_qos_reliability(convert_df_sci_names_format_4_to_6,570000).
has_qos_reliability(convert_df_sci_names_format_6_to_GNR,570000).
has_qos_reliability(convert_df_sci_names_format_6_to_OT,570000).

has_qos_reliability(convert_df_resolved_names_format_GNR_to_OT,570000).
has_qos_reliability(convert_df_resolved_names_format_GNR_to_Phylomatic,570000).
has_qos_reliability(convert_df_resolved_names_format_GNR_to_PhyloT,570000).
has_qos_reliability(convert_df_resolved_names_format_1_to_3,570000).
has_qos_reliability(convert_df_resolved_names_format_3_to_5,570000).
has_qos_reliability(convert_df_resolved_names_format_5_to_Phylomatic,570000).
has_qos_reliability(convert_df_resolved_names_format_5_to_PhyloT,570000).
has_qos_reliability(convert_df_resolved_names_format_5_to_OT,570000).
has_qos_reliability(convert_df_resolved_names_format_2_to_4,570000).
has_qos_reliability(convert_df_resolved_names_format_4_to_6,570000).
has_qos_reliability(convert_df_resolved_names_format_6_to_ALL_COMBO,570000).

has_qos_reliability(convert_df_taxons_format_GNR_to_OT,570000).
has_qos_reliability(convert_df_taxons_format_GNR_to_Phylomatic,570000).
has_qos_reliability(convert_df_taxons_format_GNR_to_PhyloT,570000).
has_qos_reliability(convert_df_taxons_format_1_to_3,570000).
has_qos_reliability(convert_df_taxons_format_3_to_5,570000).
has_qos_reliability(convert_df_taxons_format_5_to_Phylomatic,570000).
has_qos_reliability(convert_df_taxons_format_5_to_PhyloT,570000).
has_qos_reliability(convert_df_taxons_format_5_to_OT,570000).
has_qos_reliability(convert_df_taxons_format_2_to_4,570000).
has_qos_reliability(convert_df_taxons_format_4_to_6,570000).
has_qos_reliability(convert_df_taxons_format_6_to_ALL_COMBO,570000).

has_qos_reliability(convert_tree_format_NewickTree_to_ALL_COMBO,570000).
has_qos_reliability(convert_tree_format_PhyloTree_to_NMSU,570000).
has_qos_reliability(convert_tree_format_NMSU_to_NewickTree,570000).
has_qos_reliability(convert_tree_format_PhyloTree_to_phylo4Tree,570000).
has_qos_reliability(convert_tree_format_Phylo4Tree_to_PhyloTree,570000).
has_qos_reliability(convert_tree_format_1_to_2,570000).
has_qos_reliability(convert_tree_format_2_to_pHYLIPTree,570000).
has_qos_reliability(convert_tree_format_pHYLIPTree_to_PhyloTree,570000).

has_qos_reliability(convert_species_tree_format_NewickTree_to_ALL_COMBO,570000).
has_qos_reliability(convert_species_tree_format_PhyloTree_to_NMSU,570000).
has_qos_reliability(convert_species_tree_format_NMSU_to_NewickTree,570000).
has_qos_reliability(convert_species_tree_format_PhyloTree_to_phylo4Tree,570000).
has_qos_reliability(convert_species_tree_format_Phylo4Tree_to_PhyloTree,570000).
has_qos_reliability(convert_species_tree_format_1_to_2,570000).
has_qos_reliability(convert_species_tree_format_2_to_pHYLIPTree,570000).
has_qos_reliability(convert_species_tree_format_pHYLIPTree_to_PhyloTree,570000).


has_qos_reliability(convert_gene_tree_format_NewickTree_to_ALL_COMBO,570000).
has_qos_reliability(convert_gene_tree_format_PhyloTree_to_NMSU,570000).
has_qos_reliability(convert_gene_tree_format_NMSU_to_NewickTree,570000).
has_qos_reliability(convert_gene_tree_format_PhyloTree_to_phylo4Tree,570000).
has_qos_reliability(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,570000).
has_qos_reliability(convert_gene_tree_format_1_to_2,570000).
has_qos_reliability(convert_gene_tree_format_2_to_pHYLIPTree,570000).
has_qos_reliability(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,570000).

%-------------For Availability------------------------------------------

%% For compare
has_qos_availability(phylotastic_ResolvedScientificNames_FC,1000).
has_qos_availability(phylotastic_FindScientificNamesFromWeb_FC,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_FC,1000).

%has_qos_availability(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,"1.0").
%has_qos_availability(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,"1.0").
%has_qos_availability(phylotastic_ResolvedScientificNames_OT_TNRS_GET,"1.0").
%has_qos_availability(phylotastic_ResolvedScientificNames_OT_TNRS_POST,"1.0").
%has_qos_availability(phylotastic_GetAllSpeciesFromTaxon_OT_GET,"1.0").

has_qos_availability(phylotastic_ResolvedScientificNames_GNR_TNRS_GET,1000).
has_qos_availability(phylotastic_ResolvedScientificNames_GNR_TNRS_POST,1000).
has_qos_availability(phylotastic_ResolvedScientificNames_OT_TNRS_GET,1000).
has_qos_availability(phylotastic_ResolvedScientificNames_OT_TNRS_POST,1000).
has_qos_availability(phylotastic_GetAllSpeciesFromTaxon_OT_GET,1000).

% Tree Extraction
%has_qos_availability(phylotastic_GetPhylogeneticTree_OT_GET,"1.0").
%has_qos_availability(phylotastic_GetPhylogeneticTree_OT_POST,"1.0").
%has_qos_availability(phylotastic_GetPhylogeneticTree_PhyloT_GET,"1.0").
%has_qos_availability(phylotastic_GetPhylogeneticTree_PhyloT_POST,"1.0").
%has_qos_availability(phylotastic_GetPhylogeneticTree_Phylomatic_GET,"1.0").
%has_qos_availability(phylotastic_GetPhylogeneticTree_Phylomatic_POST,"1.0").

has_qos_availability(phylotastic_GetPhylogeneticTree_OT_GET,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_OT_POST,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_PhyloT_GET,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_PhyloT_POST,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_Phylomatic_GET,1000).
has_qos_availability(phylotastic_GetPhylogeneticTree_Phylomatic_POST,1000).

%has_qos_availability(phylotastic_GetInformationURLsOfSpecies_EOL_POST,"1.0").
%has_qos_availability(phylotastic_GetInformationURLsOfSpecies_EOL_GET,"1.0").
%has_qos_availability(phylotastic_GetImageURLsOfSpecies_EOL_GET,"1.0").
%has_qos_availability(phylotastic_GetImageURLsOfSpecies_EOL_POST,"1.0").
%has_qos_availability(phylotastic_FindScientificNamesFromWeb_GNRD_GET,"1.0").
%has_qos_availability(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,"1.0").
%has_qos_availability(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,"1.0").
%has_qos_availability(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,"1.0").
%has_qos_availability(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,"1.0").

has_qos_availability(phylotastic_GetInformationURLsOfSpecies_EOL_POST,1000).
has_qos_availability(phylotastic_GetInformationURLsOfSpecies_EOL_GET,1000).
has_qos_availability(phylotastic_GetImageURLsOfSpecies_EOL_GET,1000).
has_qos_availability(phylotastic_GetImageURLsOfSpecies_EOL_POST,1000).
has_qos_availability(phylotastic_FindScientificNamesFromWeb_GNRD_GET,1000).
has_qos_availability(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,1000).
has_qos_availability(phylotastic_GetSpeciesOfTaxon_Genome_NCBI_GET,1000).
has_qos_availability(phylotastic_GetAllSpeciesFromTaxon_Country_OT_GET,1000).
has_qos_availability(phylotastic_CompareTrees_Sym_Dendropy_POST,1000).
has_qos_availability(phylotastic_CompareTrees_BL_Dendropy_POST,1000).
has_qos_availability(phylotastic_GetChronograms_ScaledSpeciesTree_DateLife_POST,1000).
has_qos_availability(phylotastic_GetMetadata_Chronogram_DateLife_POST,1000).

% Add for test - Co trong Ontoloy - But Do not have real services
%has_qos_availability(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,"0.75").
%has_qos_availability(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,"1.0").
%has_qos_availability(phylotastic_GetReconciliationTree_GET,"1.0").
%has_qos_availability(phylotastic_GenerateGeneTree_From_Genes,"1.0").
%has_qos_availability(phylotastic_GeneTree_Scaling,"1.0").

has_qos_availability(phylotastic_FindScientificNamesFromWeb_CS_NMSU_GET,1000).
has_qos_availability(phylotastic_ExtractSpeciesNames_From_Gene_Tree_GET,1000).
has_qos_availability(phylotastic_GetReconciliationTree_GET,1000).
has_qos_availability(phylotastic_GenerateGeneTree_From_Genes,1000).
has_qos_availability(phylotastic_GeneTree_Scaling,1000).

% Add more for testing = CHUA CO TRONG OWL
%has_qos_availability(google_ConvertCountryCodeToName_GET,"0").
%has_qos_availability(openTree_GetTaxonomyNameFromSciName_GET,"0").
%has_qos_availability(openTree_GetScientificNameFromAName_GET,"0").

has_qos_availability(google_ConvertCountryCodeToName_GET,1000).
has_qos_availability(openTree_GetTaxonomyNameFromSciName_GET,1000).
has_qos_availability(openTree_GetScientificNameFromAName_GET,1000).

% Avaiability values for Data Conversion services
has_qos_availability(convert_df_text_format_raw_to_plain,1000).
has_qos_availability(convert_df_sci_names_format_1_to_3,1000).
has_qos_availability(convert_df_sci_names_format_3_to_5,1000).
has_qos_availability(convert_df_sci_names_format_5_to_GNR,1000).
has_qos_availability(convert_df_sci_names_format_5_to_OT,1000).
has_qos_availability(convert_df_sci_names_format_2_to_4,1000).
has_qos_availability(convert_df_sci_names_format_4_to_6,1000).
has_qos_availability(convert_df_sci_names_format_6_to_GNR,1000).
has_qos_availability(convert_df_sci_names_format_6_to_OT,1000).

has_qos_availability(convert_df_resolved_names_format_GNR_to_OT,1000).
has_qos_availability(convert_df_resolved_names_format_GNR_to_Phylomatic,1000).
has_qos_availability(convert_df_resolved_names_format_GNR_to_PhyloT,1000).
has_qos_availability(convert_df_resolved_names_format_1_to_3,1000).
has_qos_availability(convert_df_resolved_names_format_3_to_5,1000).
has_qos_availability(convert_df_resolved_names_format_5_to_Phylomatic,1000).
has_qos_availability(convert_df_resolved_names_format_5_to_PhyloT,1000).
has_qos_availability(convert_df_resolved_names_format_5_to_OT,1000).
has_qos_availability(convert_df_resolved_names_format_2_to_4,1000).
has_qos_availability(convert_df_resolved_names_format_4_to_6,1000).
has_qos_availability(convert_df_resolved_names_format_6_to_ALL_COMBO,1000).

has_qos_availability(convert_df_taxons_format_GNR_to_OT,1000).
has_qos_availability(convert_df_taxons_format_GNR_to_Phylomatic,1000).
has_qos_availability(convert_df_taxons_format_GNR_to_PhyloT,1000).
has_qos_availability(convert_df_taxons_format_1_to_3,1000).
has_qos_availability(convert_df_taxons_format_3_to_5,1000).
has_qos_availability(convert_df_taxons_format_5_to_Phylomatic,1000).
has_qos_availability(convert_df_taxons_format_5_to_PhyloT,1000).
has_qos_availability(convert_df_taxons_format_5_to_OT,1000).
has_qos_availability(convert_df_taxons_format_2_to_4,1000).
has_qos_availability(convert_df_taxons_format_4_to_6,1000).
has_qos_availability(convert_df_taxons_format_6_to_ALL_COMBO,1000).

has_qos_availability(convert_tree_format_NewickTree_to_ALL_COMBO,1000).
has_qos_availability(convert_tree_format_PhyloTree_to_NMSU,1000).
has_qos_availability(convert_tree_format_NMSU_to_NewickTree,1000).
has_qos_availability(convert_tree_format_PhyloTree_to_phylo4Tree,1000).
has_qos_availability(convert_tree_format_Phylo4Tree_to_PhyloTree,1000).
has_qos_availability(convert_tree_format_1_to_2,1000).
has_qos_availability(convert_tree_format_2_to_pHYLIPTree,1000).
has_qos_availability(convert_tree_format_pHYLIPTree_to_PhyloTree,1000).

has_qos_availability(convert_species_tree_format_NewickTree_to_ALL_COMBO,1000).
has_qos_availability(convert_species_tree_format_PhyloTree_to_NMSU,1000).
has_qos_availability(convert_species_tree_format_NMSU_to_NewickTree,1000).
has_qos_availability(convert_species_tree_format_PhyloTree_to_phylo4Tree,1000).
has_qos_availability(convert_species_tree_format_Phylo4Tree_to_PhyloTree,1000).
has_qos_availability(convert_species_tree_format_1_to_2,1000).
has_qos_availability(convert_species_tree_format_2_to_pHYLIPTree,1000).
has_qos_availability(convert_species_tree_format_pHYLIPTree_to_PhyloTree,1000).


has_qos_availability(convert_gene_tree_format_NewickTree_to_ALL_COMBO,1000).
has_qos_availability(convert_gene_tree_format_PhyloTree_to_NMSU,1000).
has_qos_availability(convert_gene_tree_format_NMSU_to_NewickTree,1000).
has_qos_availability(convert_gene_tree_format_PhyloTree_to_phylo4Tree,1000).
has_qos_availability(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,1000).
has_qos_availability(convert_gene_tree_format_1_to_2,1000).
has_qos_availability(convert_gene_tree_format_2_to_pHYLIPTree,1000).
has_qos_availability(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,1000).

%=================PART 4.3 : DEFINE INSTANCES of DATA FORMAT CONVERTION SERVICES================================
subClass(X,X) :- class(X).

class(names_format).
class(raw_names_format_1).
class(raw_names_format_2).
class(raw_names_format_3).
class(raw_names_format_4).
class(raw_names_format_5).
class(raw_names_format_6).
class(raw_names_format_GNR).
class(raw_names_format_OT).
class(raw_names_format_FC).

class(resolved_names_format_1).
class(resolved_names_format_2).
class(resolved_names_format_3).
class(resolved_names_format_4).
class(resolved_names_format_5).
class(resolved_names_format_6).
class(resolved_names_format_GNR).
class(resolved_names_format_OT).
class(resolved_names_format_Phylomatic).
class(resolved_names_format_PhyloT).
class(resolved_names_format_FC).

subClass(raw_names_format_1, names_format).
subClass(raw_names_format_2, names_format).
subClass(raw_names_format_3, names_format).
subClass(raw_names_format_4, names_format).
subClass(raw_names_format_5, names_format).
subClass(raw_names_format_6, names_format).
subClass(raw_names_format_GNR,names_format).
subClass(raw_names_format_OT,names_format).
subClass(raw_names_format_FC,names_format).
subClass(resolved_names_format_1,names_format).
subClass(resolved_names_format_2,names_format).
subClass(resolved_names_format_3,names_format).
subClass(resolved_names_format_4,names_format).
subClass(resolved_names_format_5,names_format).
subClass(resolved_names_format_6,names_format).
subClass(resolved_names_format_GNR,names_format).
subClass(resolved_names_format_OT,names_format).
subClass(resolved_names_format_Phylomatic,names_format).
subClass(resolved_names_format_PhyloT,names_format).
subClass(resolved_names_format_FC,names_format).

% for URL data format
class(url_format).
class(url_format_1).
class(url_format_2).
class(url_format_3).
class(url_format_4).
class(url_format_5).
subClass(url_format_1,url_format).
subClass(url_format_2,url_format).
subClass(url_format_3,url_format).
subClass(url_format_4,url_format).
subClass(url_format_5,url_format).

% for Tree Data Format
class(tree_format_1).
class(tree_format_2).
class(tree_format_3).
class(tree_format_4).
class(nmsu_tree_format).
class(compare_tree_format).
subClass(tree_format_1,treeFormat).
subClass(tree_format_2,treeFormat).
subClass(tree_format_3,treeFormat).
subClass(tree_format_4,treeFormat).
subClass(nmsu_tree_format,treeFormat).
subClass(compare_tree_format,treeFormat).


% INSTANCES Data format Conversion operation
instance(convert_df_text_format_raw_to_plain).

instance(convert_df_sci_names_format_1_to_3).
instance(convert_df_sci_names_format_3_to_5).
instance(convert_df_sci_names_format_5_to_GNR).
instance(convert_df_sci_names_format_5_to_OT).
instance(convert_df_sci_names_format_2_to_4).
instance(convert_df_sci_names_format_4_to_6).
instance(convert_df_sci_names_format_6_to_GNR).
instance(convert_df_sci_names_format_6_to_OT).

instance(convert_df_resolved_names_format_GNR_to_OT).
instance(convert_df_resolved_names_format_GNR_to_Phylomatic).
instance(convert_df_resolved_names_format_GNR_to_PhyloT).
instance(convert_df_resolved_names_format_1_to_3).
instance(convert_df_resolved_names_format_3_to_5).
instance(convert_df_resolved_names_format_5_to_Phylomatic).
instance(convert_df_resolved_names_format_5_to_PhyloT).
instance(convert_df_resolved_names_format_5_to_OT).
instance(convert_df_resolved_names_format_2_to_4).
instance(convert_df_resolved_names_format_4_to_6).
instance(convert_df_resolved_names_format_6_to_ALL_COMBO).

instance(convert_df_taxons_format_GNR_to_OT).
instance(convert_df_taxons_format_GNR_to_Phylomatic).
instance(convert_df_taxons_format_GNR_to_PhyloT).
instance(convert_df_taxons_format_1_to_3).
instance(convert_df_taxons_format_3_to_5).
instance(convert_df_taxons_format_5_to_Phylomatic).
instance(convert_df_taxons_format_5_to_PhyloT).
instance(convert_df_taxons_format_5_to_OT).
instance(convert_df_taxons_format_2_to_4).
instance(convert_df_taxons_format_4_to_6).
instance(convert_df_taxons_format_6_to_ALL_COMBO).

%% INHERITANCE ISSUE : Have to seperate to find the best ONE 
%%%% Ultlize the inherant : Input resource_Tree ; Output : resource_speciesTree and resource_geneTree both
%%%%                        Cannot output resource_Tree because cannot attached this output to next service with input resource_speciesTree or resource_geneTree
instance(convert_tree_format_NewickTree_to_ALL_COMBO).
instance(convert_tree_format_PhyloTree_to_NMSU).
instance(convert_tree_format_NMSU_to_NewickTree).
instance(convert_tree_format_PhyloTree_to_phylo4Tree).
instance(convert_tree_format_Phylo4Tree_to_PhyloTree).
instance(convert_tree_format_1_to_2).
instance(convert_tree_format_2_to_pHYLIPTree).
instance(convert_tree_format_pHYLIPTree_to_PhyloTree).

%%%% Seperate operation deal with resource_speciesTree and resource_geneTree -- Beginning : I prefer this one firstly
% for species tree
instance(convert_species_tree_format_NewickTree_to_ALL_COMBO).
instance(convert_species_tree_format_PhyloTree_to_NMSU).
instance(convert_species_tree_format_NMSU_to_NewickTree).
instance(convert_species_tree_format_PhyloTree_to_phylo4Tree).
instance(convert_species_tree_format_Phylo4Tree_to_PhyloTree).
instance(convert_species_tree_format_1_to_2).
instance(convert_species_tree_format_2_to_pHYLIPTree).
instance(convert_species_tree_format_pHYLIPTree_to_PhyloTree).

% for gene tree
instance(convert_gene_tree_format_NewickTree_to_ALL_COMBO).
instance(convert_gene_tree_format_PhyloTree_to_NMSU).
instance(convert_gene_tree_format_NMSU_to_NewickTree).
instance(convert_gene_tree_format_PhyloTree_to_phylo4Tree).
instance(convert_gene_tree_format_Phylo4Tree_to_PhyloTree).
instance(convert_gene_tree_format_1_to_2).
instance(convert_gene_tree_format_2_to_pHYLIPTree).
instance(convert_gene_tree_format_pHYLIPTree_to_PhyloTree).


%--------------------
isInstanceOf(convert_df_text_format_raw_to_plain,data_format_conversion).

isInstanceOf(convert_df_sci_names_format_1_to_3,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_3_to_5,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_5_to_GNR,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_5_to_OT,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_2_to_4,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_4_to_6,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_6_to_GNR,data_format_conversion).
isInstanceOf(convert_df_sci_names_format_6_to_OT,data_format_conversion).

isInstanceOf(convert_df_resolved_names_format_GNR_to_OT,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_GNR_to_Phylomatic,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_GNR_to_PhyloT,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_1_to_3,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_3_to_5,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_5_to_Phylomatic,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_5_to_PhyloT,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_5_to_OT,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_2_to_4,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_4_to_6,data_format_conversion).
isInstanceOf(convert_df_resolved_names_format_6_to_ALL_COMBO,data_format_conversion).

isInstanceOf(convert_df_taxons_format_GNR_to_OT,data_format_conversion).
isInstanceOf(convert_df_taxons_format_GNR_to_Phylomatic,data_format_conversion).
isInstanceOf(convert_df_taxons_format_GNR_to_PhyloT,data_format_conversion).
isInstanceOf(convert_df_taxons_format_1_to_3,data_format_conversion).
isInstanceOf(convert_df_taxons_format_3_to_5,data_format_conversion).
isInstanceOf(convert_df_taxons_format_5_to_Phylomatic,data_format_conversion).
isInstanceOf(convert_df_taxons_format_5_to_PhyloT,data_format_conversion).
isInstanceOf(convert_df_taxons_format_5_to_OT,data_format_conversion).
isInstanceOf(convert_df_taxons_format_2_to_4,data_format_conversion).
isInstanceOf(convert_df_taxons_format_4_to_6,data_format_conversion).
isInstanceOf(convert_df_taxons_format_6_to_ALL_COMBO,data_format_conversion).


%% INHERITANCE ISSUE : Have to seperate to find the best ONE 
%%%% Ultlize the inherant : Input resource_Tree ; Output : resource_speciesTree and resource_geneTree both
%%%%                        Cannot output resource_Tree because cannot attached this output to next service with input resource_speciesTree or resource_geneTree
isInstanceOf(convert_tree_format_NewickTree_to_ALL_COMBO,data_format_conversion).
isInstanceOf(convert_tree_format_PhyloTree_to_NMSU,data_format_conversion).
isInstanceOf(convert_tree_format_NMSU_to_NewickTree,data_format_conversion).
isInstanceOf(convert_tree_format_PhyloTree_to_phylo4Tree,data_format_conversion).
isInstanceOf(convert_tree_format_Phylo4Tree_to_PhyloTree,data_format_conversion).
isInstanceOf(convert_tree_format_1_to_2,data_format_conversion).
isInstanceOf(convert_tree_format_2_to_pHYLIPTree,data_format_conversion).
isInstanceOf(convert_tree_format_pHYLIPTree_to_PhyloTree,data_format_conversion).

%%%% Seperate operation deal with resource_speciesTree and resource_geneTree -- Beginning : I prefer this one firstly
% for species tree
isInstanceOf(convert_species_tree_format_NewickTree_to_ALL_COMBO,data_format_conversion).
isInstanceOf(convert_species_tree_format_PhyloTree_to_NMSU,data_format_conversion).
isInstanceOf(convert_species_tree_format_NMSU_to_NewickTree,data_format_conversion).
isInstanceOf(convert_species_tree_format_PhyloTree_to_phylo4Tree,data_format_conversion).
isInstanceOf(convert_species_tree_format_Phylo4Tree_to_PhyloTree,data_format_conversion).
isInstanceOf(convert_species_tree_format_1_to_2,data_format_conversion).
isInstanceOf(convert_species_tree_format_2_to_pHYLIPTree,data_format_conversion).
isInstanceOf(convert_species_tree_format_pHYLIPTree_to_PhyloTree,data_format_conversion).

% for gene tree
isInstanceOf(convert_gene_tree_format_NewickTree_to_ALL_COMBO,data_format_conversion).
isInstanceOf(convert_gene_tree_format_PhyloTree_to_NMSU,data_format_conversion).
isInstanceOf(convert_gene_tree_format_NMSU_to_NewickTree,data_format_conversion).
isInstanceOf(convert_gene_tree_format_PhyloTree_to_phylo4Tree,data_format_conversion).
isInstanceOf(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,data_format_conversion).
isInstanceOf(convert_gene_tree_format_1_to_2,data_format_conversion).
isInstanceOf(convert_gene_tree_format_2_to_pHYLIPTree,data_format_conversion).
isInstanceOf(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,data_format_conversion).



% HAS INPUT/Output for Data Format Convertion services INSTANCES
%--------------------------------------------
%% For convert_df_text_format_raw_to_plain
%%%% Input and Data format
instance_has_input(convert_df_text_format_raw_to_plain,text_1,resource_FreeText).
instance_operation_has_input_has_data_format(convert_df_text_format_raw_to_plain, resource_FreeText, raw_text).
%%%% Output and Data format
instance_has_output(convert_df_text_format_raw_to_plain,cv_names_1,resource_FreeText).
instance_operation_has_output_has_data_format(convert_df_text_format_raw_to_plain, resource_FreeText, plain_text).
%--------------------------------------------
%% For convert_df_sci_names_format_1_to_3
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_1_to_3,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_1_to_3, resource_SetOfSciName, raw_names_format_1).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_1_to_3,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_1_to_3, resource_SetOfSciName, raw_names_format_3).

%% For convert_df_sci_names_format_3_to_5
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_3_to_5,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_3_to_5, resource_SetOfSciName, raw_names_format_3).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_3_to_5,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_3_to_5, resource_SetOfSciName, raw_names_format_5).

%% For convert_df_sci_names_format_5_to_GNR
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_5_to_GNR,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_5_to_GNR, resource_SetOfSciName, raw_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_5_to_GNR,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_5_to_GNR, resource_SetOfSciName, raw_names_format_GNR).

%% For convert_df_sci_names_format_5_to_OT
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_5_to_OT,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_5_to_OT, resource_SetOfSciName, raw_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_5_to_OT,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_5_to_OT, resource_SetOfSciName, raw_names_format_OT).

%% For convert_df_sci_names_format_2_to_4
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_2_to_4,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_2_to_4, resource_SetOfSciName, raw_names_format_2).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_2_to_4,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_2_to_4, resource_SetOfSciName, raw_names_format_4).

%% For convert_df_sci_names_format_4_to_6
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_4_to_6,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_4_to_6, resource_SetOfSciName, raw_names_format_4).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_4_to_6,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_4_to_6, resource_SetOfSciName, raw_names_format_6).

%% For convert_df_sci_names_format_6_to_GNR
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_6_to_GNR,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_6_to_GNR, resource_SetOfSciName, raw_names_format_6).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_6_to_GNR,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_6_to_GNR, resource_SetOfSciName, raw_names_format_GNR).

%% For convert_df_sci_names_format_6_to_OT
%%%% Input and Data format
instance_has_input(convert_df_sci_names_format_6_to_OT,cv_names_1,resource_SetOfSciName).
instance_operation_has_input_has_data_format(convert_df_sci_names_format_6_to_OT, resource_SetOfSciName, raw_names_format_6).
%%%% Output and Data format
instance_has_output(convert_df_sci_names_format_6_to_OT,cv_names_1,resource_SetOfSciName).
instance_operation_has_output_has_data_format(convert_df_sci_names_format_6_to_OT, resource_SetOfSciName, raw_names_format_OT).

%--------------------------------------------
%% For convert_df_resolved_names_format_GNR_to_OT
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_GNR_to_OT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_GNR_to_OT, resource_SetOfResolvedName, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_GNR_to_OT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_GNR_to_OT, resource_SetOfResolvedName, resolved_names_format_OT).

%% For convert_df_resolved_names_format_GNR_to_Phylomatic
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_GNR_to_Phylomatic,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_GNR_to_Phylomatic, resource_SetOfResolvedName, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_GNR_to_Phylomatic,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_GNR_to_Phylomatic, resource_SetOfResolvedName, resolved_names_format_Phylomatic).

%% For convert_df_resolved_names_format_GNR_to_PhyloT
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_GNR_to_PhyloT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_GNR_to_PhyloT, resource_SetOfResolvedName, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_GNR_to_PhyloT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_GNR_to_PhyloT, resource_SetOfResolvedName, resolved_names_format_PhyloT).

%% For convert_df_resolved_names_format_1_to_3
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_1_to_3,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_1_to_3, resource_SetOfResolvedName, resolved_names_format_1).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_1_to_3,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_1_to_3, resource_SetOfResolvedName, resolved_names_format_3).

%% For convert_df_resolved_names_format_3_to_5
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_3_to_5,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_3_to_5, resource_SetOfResolvedName, resolved_names_format_3).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_3_to_5,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_3_to_5, resource_SetOfResolvedName, resolved_names_format_5).

%% For convert_df_resolved_names_format_5_to_OT
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_5_to_OT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_5_to_OT, resource_SetOfResolvedName, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_5_to_OT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_5_to_OT, resource_SetOfResolvedName, resolved_names_format_OT).

%% For convert_df_resolved_names_format_5_to_PhyloT
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_5_to_PhyloT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_5_to_PhyloT, resource_SetOfResolvedName, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_5_to_PhyloT,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_5_to_PhyloT, resource_SetOfResolvedName, resolved_names_format_PhyloT).

%% For convert_df_resolved_names_format_5_to_Phylomatic
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_5_to_Phylomatic,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_5_to_Phylomatic, resource_SetOfResolvedName, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_5_to_Phylomatic,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_5_to_Phylomatic, resource_SetOfResolvedName, resolved_names_format_Phylomatic).

%% For convert_df_resolved_names_format_2_to_4
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_2_to_4,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_2_to_4, resource_SetOfResolvedName, resolved_names_format_2).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_2_to_4,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_2_to_4, resource_SetOfResolvedName, resolved_names_format_4).

%% For convert_df_resolved_names_format_4_to_6
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_4_to_6,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_4_to_6, resource_SetOfResolvedName, resolved_names_format_4).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_4_to_6,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_4_to_6, resource_SetOfResolvedName, resolved_names_format_6).

%% For convert_df_resolved_names_format_6_to_ALL_COMBO
%%%% Input and Data format
instance_has_input(convert_df_resolved_names_format_6_to_ALL_COMBO,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_input_has_data_format(convert_df_resolved_names_format_6_to_ALL_COMBO, resource_SetOfResolvedName, resolved_names_format_6).
%%%% Output and Data format
instance_has_output(convert_df_resolved_names_format_6_to_ALL_COMBO,cv_res_names_1,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_6_to_ALL_COMBO, resource_SetOfResolvedName, resolved_names_format_OT).
instance_has_output(convert_df_resolved_names_format_6_to_ALL_COMBO,cv_res_names_2,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_6_to_ALL_COMBO, resource_SetOfResolvedName, resolved_names_format_PhyloT).
instance_has_output(convert_df_resolved_names_format_6_to_ALL_COMBO,cv_res_names_3,resource_SetOfResolvedName).
instance_operation_has_output_has_data_format(convert_df_resolved_names_format_6_to_ALL_COMBO, resource_SetOfResolvedName, resolved_names_format_Phylomatic).

%--------------------------------------------
%% For convert_df_taxons_format_GNR_to_OT
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_GNR_to_OT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_GNR_to_OT, resource_SetOfTaxon, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_GNR_to_OT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_GNR_to_OT, resource_SetOfTaxon, resolved_names_format_OT).

%% For convert_df_taxons_format_GNR_to_Phylomatic
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_GNR_to_Phylomatic,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_GNR_to_Phylomatic, resource_SetOfTaxon, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_GNR_to_Phylomatic,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_GNR_to_Phylomatic, resource_SetOfTaxon, resolved_names_format_Phylomatic).

%% For convert_df_taxons_format_GNR_to_PhyloT
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_GNR_to_PhyloT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_GNR_to_PhyloT, resource_SetOfTaxon, resolved_names_format_GNR).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_GNR_to_PhyloT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_GNR_to_PhyloT, resource_SetOfTaxon, resolved_names_format_PhyloT).

%% For convert_df_taxons_format_1_to_3
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_1_to_3,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_1_to_3, resource_SetOfTaxon, resolved_names_format_1).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_1_to_3,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_1_to_3, resource_SetOfTaxon, resolved_names_format_3).

%% For convert_df_taxons_format_3_to_5
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_3_to_5,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_3_to_5, resource_SetOfTaxon, resolved_names_format_3).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_3_to_5,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_3_to_5, resource_SetOfTaxon, resolved_names_format_5).

%% For convert_df_taxons_format_5_to_OT
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_5_to_OT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_5_to_OT, resource_SetOfTaxon, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_5_to_OT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_5_to_OT, resource_SetOfTaxon, resolved_names_format_OT).

%% For convert_df_taxons_format_5_to_PhyloT
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_5_to_PhyloT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_5_to_PhyloT, resource_SetOfTaxon, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_5_to_PhyloT,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_5_to_PhyloT, resource_SetOfTaxon, resolved_names_format_PhyloT).

%% For convert_df_taxons_format_5_to_Phylomatic
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_5_to_Phylomatic,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_5_to_Phylomatic, resource_SetOfTaxon, resolved_names_format_5).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_5_to_Phylomatic,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_5_to_Phylomatic, resource_SetOfTaxon, resolved_names_format_Phylomatic).

%% For convert_df_taxons_format_2_to_4
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_2_to_4,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_2_to_4, resource_SetOfTaxon, resolved_names_format_2).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_2_to_4,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_2_to_4, resource_SetOfTaxon, resolved_names_format_4).

%% For convert_df_taxons_format_4_to_6
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_4_to_6,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_4_to_6, resource_SetOfTaxon, resolved_names_format_4).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_4_to_6,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_4_to_6, resource_SetOfTaxon, resolved_names_format_6).

%% For convert_df_taxons_format_6_to_ALL_COMBO
%%%% Input and Data format
instance_has_input(convert_df_taxons_format_6_to_ALL_COMBO,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_input_has_data_format(convert_df_taxons_format_6_to_ALL_COMBO, resource_SetOfTaxon, resolved_names_format_6).
%%%% Output and Data format
instance_has_output(convert_df_taxons_format_6_to_ALL_COMBO,cv_taxons_1,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_6_to_ALL_COMBO, resource_SetOfTaxon, resolved_names_format_OT).
instance_has_output(convert_df_taxons_format_6_to_ALL_COMBO,cv_taxons_2,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_6_to_ALL_COMBO, resource_SetOfTaxon, resolved_names_format_PhyloT).
instance_has_output(convert_df_taxons_format_6_to_ALL_COMBO,cv_taxons_3,resource_SetOfTaxon).
instance_operation_has_output_has_data_format(convert_df_taxons_format_6_to_ALL_COMBO, resource_SetOfTaxon, resolved_names_format_Phylomatic).

%--------------------------------------------
%% For convert_tree_format_NewickTree_to_ALL_COMBO - INHERITANCE ISSUE 
%%%% Input and Data format
%instance_has_input(convert_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_Tree).
%instance_operation_has_input_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_Tree, newickTree).
%%%% Output and Data format
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_speciesTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, phyloTree).
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_2,resource_speciesTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, phylo4Tree).
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_3,resource_speciesTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, pHYLIPTree).
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_geneTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, phyloTree).
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_2,resource_geneTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, phylo4Tree).
%instance_has_output(convert_tree_format_NewickTree_to_ALL_COMBO,tree_3,resource_geneTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, pHYLIPTree).


%% For convert_species_tree_format_NewickTree_to_ALL_COMBO
%%%% Input and Data format
instance_has_input(convert_species_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, newickTree).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, phyloTree).
instance_has_output(convert_species_tree_format_NewickTree_to_ALL_COMBO,tree_2,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, phylo4Tree).
instance_has_output(convert_species_tree_format_NewickTree_to_ALL_COMBO,tree_3,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_NewickTree_to_ALL_COMBO, resource_speciesTree, pHYLIPTree).

%% For convert_gene_tree_format_NewickTree_to_ALL_COMBO
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, newickTree).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_NewickTree_to_ALL_COMBO,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, phyloTree).
instance_has_output(convert_gene_tree_format_NewickTree_to_ALL_COMBO,tree_2,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, phylo4Tree).
instance_has_output(convert_gene_tree_format_NewickTree_to_ALL_COMBO,tree_3,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_NewickTree_to_ALL_COMBO, resource_geneTree, pHYLIPTree).


%% For convert_tree_format_PhyloTree_to_NMSU - INHERITANCE ISSUE
%%%% Input and Data format
%instance_has_input(convert_tree_format_PhyloTree_to_NMSU,tree_1,resource_Tree).
%instance_operation_has_input_has_data_format(convert_tree_format_PhyloTree_to_NMSU, resource_Tree, phyloTree).
%%%% Output and Data format
%instance_has_output(convert_tree_format_PhyloTree_to_NMSU,tree_1,resource_speciesTree).
%instance_operation_has_output_has_data_format(convert_tree_format_PhyloTree_to_NMSU, resource_speciesTree, nmsu_tree_format).
%instance_has_output(convert_tree_format_PhyloTree_to_NMSU,tree_1,resource_geneTree).
%instance_operation_has_output_has_data_format(convert_tree_format_PhyloTree_to_NMSU, resource_geneTree, nmsu_tree_format).

%% For convert_species_tree_format_PhyloTree_to_NMSU
%%%% Input and Data format
instance_has_input(convert_species_tree_format_PhyloTree_to_NMSU,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_PhyloTree_to_NMSU, resource_speciesTree, phyloTree).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_PhyloTree_to_NMSU,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_PhyloTree_to_NMSU, resource_speciesTree, nmsu_tree_format).


%% For convert_gene_tree_format_PhyloTree_to_NMSU
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_PhyloTree_to_NMSU,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_PhyloTree_to_NMSU, resource_geneTree, phyloTree).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_PhyloTree_to_NMSU,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_PhyloTree_to_NMSU, resource_geneTree, nmsu_tree_format).

%% For convert_tree_format_NMSU_to_NewickTree - INHERITANCE ISSUE
%%%% Input and Data format
%instance_has_input(convert_tree_format_NMSU_to_NewickTree,tree_1,resource_Tree).
%instance_operation_has_input_has_data_format(convert_tree_format_NMSU_to_NewickTree, resource_Tree, nmsu_tree_format).
%%%% Output and Data format
%instance_has_output(convert_tree_format_NMSU_to_NewickTree,tree_1,resource_speciesTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NMSU_to_NewickTree, resource_speciesTree, newickTree).
%instance_has_output(convert_tree_format_NMSU_to_NewickTree,tree_1,resource_geneTree).
%instance_operation_has_output_has_data_format(convert_tree_format_NMSU_to_NewickTree, resource_geneTree, newickTree).

%% For convert_species_tree_format_NMSU_to_NewickTree
%%%% Input and Data format
instance_has_input(convert_species_tree_format_NMSU_to_NewickTree,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_NMSU_to_NewickTree, resource_speciesTree, nmsu_tree_format).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_NMSU_to_NewickTree,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_NMSU_to_NewickTree, resource_speciesTree, newickTree).

%% For convert_gene_tree_format_NMSU_to_NewickTree
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_NMSU_to_NewickTree,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_NMSU_to_NewickTree, resource_geneTree, nmsu_tree_format).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_NMSU_to_NewickTree,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_NMSU_to_NewickTree, resource_geneTree, newickTree).

%% For convert_species_tree_format_PhyloTree_to_phylo4Tree
%%%% Input and Data format
instance_has_input(convert_species_tree_format_PhyloTree_to_phylo4Tree,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_PhyloTree_to_phylo4Tree, resource_speciesTree, phyloTree).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_PhyloTree_to_phylo4Tree,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_PhyloTree_to_phylo4Tree, resource_speciesTree, phylo4Tree).

%% For convert_gene_tree_format_PhyloTree_to_phylo4Tree
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_PhyloTree_to_phylo4Tree,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_PhyloTree_to_phylo4Tree, resource_geneTree, phyloTree).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_PhyloTree_to_phylo4Tree,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_PhyloTree_to_phylo4Tree, resource_geneTree, phylo4Tree).

%% For convert_species_tree_format_Phylo4Tree_to_PhyloTree
%%%% Input and Data format
instance_has_input(convert_species_tree_format_Phylo4Tree_to_PhyloTree,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_Phylo4Tree_to_PhyloTree, resource_speciesTree, phylo4Tree).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_Phylo4Tree_to_PhyloTree,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_Phylo4Tree_to_PhyloTree, resource_speciesTree, phyloTree).

%% For convert_gene_tree_format_Phylo4Tree_to_PhyloTree
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_Phylo4Tree_to_PhyloTree, resource_geneTree, phylo4Tree).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_Phylo4Tree_to_PhyloTree,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_Phylo4Tree_to_PhyloTree, resource_geneTree, phyloTree).

%% For convert_species_tree_format_1_to_2
%%%% Input and Data format
instance_has_input(convert_species_tree_format_1_to_2,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_1_to_2, resource_speciesTree, tree_format_1).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_1_to_2,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_1_to_2, resource_speciesTree, tree_format_2).

%% For convert_gene_tree_format_1_to_2
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_1_to_2,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_1_to_2, resource_geneTree, tree_format_1).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_1_to_2,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_1_to_2, resource_geneTree, tree_format_2).

%% For convert_species_tree_format_2_to_pHYLIPTree
%%%% Input and Data format
instance_has_input(convert_species_tree_format_2_to_pHYLIPTree,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_2_to_pHYLIPTree, resource_speciesTree, tree_format_2).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_2_to_pHYLIPTree,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_2_to_pHYLIPTree, resource_speciesTree, pHYLIPTree).

%% For convert_gene_tree_format_2_to_pHYLIPTree
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_2_to_pHYLIPTree,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_2_to_pHYLIPTree, resource_geneTree, tree_format_2).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_2_to_pHYLIPTree,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_2_to_pHYLIPTree, resource_geneTree, pHYLIPTree).

%% For convert_species_tree_format_pHYLIPTree_to_PhyloTree
%%%% Input and Data format
instance_has_input(convert_species_tree_format_pHYLIPTree_to_PhyloTree,tree_1,resource_speciesTree).
instance_operation_has_input_has_data_format(convert_species_tree_format_pHYLIPTree_to_PhyloTree, resource_speciesTree, pHYLIPTree).
%%%% Output and Data format
instance_has_output(convert_species_tree_format_pHYLIPTree_to_PhyloTree,tree_1,resource_speciesTree).
instance_operation_has_output_has_data_format(convert_species_tree_format_pHYLIPTree_to_PhyloTree, resource_speciesTree, phyloTree).

%% For convert_gene_tree_format_pHYLIPTree_to_PhyloTree
%%%% Input and Data format
instance_has_input(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,tree_1,resource_geneTree).
instance_operation_has_input_has_data_format(convert_gene_tree_format_pHYLIPTree_to_PhyloTree, resource_geneTree, pHYLIPTree).
%%%% Output and Data format
instance_has_output(convert_gene_tree_format_pHYLIPTree_to_PhyloTree,tree_1,resource_geneTree).
instance_operation_has_output_has_data_format(convert_gene_tree_format_pHYLIPTree_to_PhyloTree, resource_geneTree, phyloTree).

%=======================================================================
% PART 5 : Define classes operation has INPUT and OUTPUT class
%=======================================================================
%%%%%%%%%%%%%%%%%%%
% Hierarchy Level 1
%%%%%%%%%%%%%%%%%%%
% class names_operation
output(names_operation, set_of_names_1, resource_SetOfNames).

% class list_operation

% class species_operation

% class taxon_operation

% class tree_operation

% class convert_operation

% class look_up_operation

%%%%%%%%%%%%%%%%%%%
% Hierarchy Level 2
%%%%%%%%%%%%%%%%%%%
%%% Parent class : list_operation
% class list_creation_operation

% class list_retrieval_operation

% class list_update_operation

%%% Parent class : names_operation
% class names_extraction_operation
output(names_extraction_operation, connection_time_1, resource_ConnectionTime).
output(names_extraction_operation, http_code_1, resource_HTTPCode).
output(names_extraction_operation, set_of_names_1, resource_SetOfSciName).

% class names_resolution_operation
input(names_resolution_operation, set_of_names_1, resource_SetOfSciName).
output(names_resolution_operation, set_of_names_1, resource_SetOfTaxon).
output(names_resolution_operation, http_code_1, resource_HTTPCode).
output(names_resolution_operation, set_of_names_1, resource_SetOfResolvedName).

% class names_conversion_operation


%%% Parent class : species_operation

%%% Parent class : taxon_operation
% class taxon_to_species_operation
input(taxon_to_species_operation, single_name_1, resource_taxon).
output(taxon_to_species_operation, set_of_names_1, resource_SetOfSciName).
output(taxon_to_species_operation, http_code_1, resource_HTTPCode).
output(taxon_to_species_operation, single_name_1, resource_taxon).

%%% Parent class : tree_operation
% class tree_comparison
% input(tree_comparison, set_of_trees_1, resource_SetOfPhylogenyTrees).

% class tree_generation
output(tree_generation, phylo_tree_1, resource_Tree).

% class tree_information

% class tree_transformation
input(tree_transformation, phylo_tree_1, resource_Tree).
output(tree_transformation, phylo_tree_2, resource_Tree).

% class tree_visualization
input(tree_visualization, phylo_tree_1, resource_Tree).
output(tree_visualization, image_1, resource_Image).

%%% Parent class : convert_operation
% class data_format_conversion

%%% Parent class : look_up_operation
% class look_up_taxonomy
output(look_up_taxonomy, single_name_1, resource_taxon).

% class look_up_scientific_name
output(look_up_scientific_name, single_name_1, resource_ScientificName).

% class look_up_location
%output(look_up_location, single_name_1, resource_CountryName).

%%%%%%%%%%%%%%%%%%%
% Hierarchy Level 3
%%%%%%%%%%%%%%%%%%%

%%% Parent class : list_operation/list_creation_operation

%%% Parent class : list_operation/list_retrieval_operation

%%% Parent class : list_operation/list_update_operation
% class list_update_add

% class list_update_delete

% class list_update_edit

%%% Parent class : names_operation/names_extraction_operation
% class names_extraction_text
input(names_extraction_text, free_text_1, resource_FreeText).

% class names_extraction_document
input(names_extraction_document, document_1, resource_Document).

% class names_extraction_web
input(names_extraction_web, http_url_1, resource_WebURL).

% class names_extraction_tree
input(names_extraction_tree, tree_1, resource_geneTree).

%%% Parent class : names_operation/names_resolution_operation

%%% Parent class : names_operation/names_conversion_operation
% class common_name_to_scientific_name
input(common_name_to_scientific_name, single_name_1, resource_CommonName).
output(common_name_to_scientific_name, single_name_2, resource_ScientificName).
output(common_name_to_scientific_name, url_info_1, resource_WebURL).
output(common_name_to_scientific_name, http_code_1, resource_HTTPCode).

%%% Parent class : species_operation/species_information_operation
% class species_images_operation

% class species_url_operation

%%% Parent class : taxon_operation/taxon_to_species_operation
% class taxon_to_species_by_country
input(taxon_to_species_by_country, single_country_name_1, resource_CountryName).

% class taxon_to_species_by_genome

%%% Parent class : tree_operation/tree_comparison
% class branch_length_comparison_operation
input(branch_length_comparison_operation, phylo_tree_1, resource_speciesTree).
input(branch_length_comparison_operation, phylo_tree_2, resource_speciesTree).
output(branch_length_comparison_operation, are_same_tree, resource_AreSameTree).
output(branch_length_comparison_operation, http_code_1, resource_HTTPCode).
output(branch_length_comparison_operation, ws_message_1, ws_response_message).

% class symmetric_comparison_operation
input(symmetric_comparison_operation, phylo_tree_1, resource_speciesTree).
input(symmetric_comparison_operation, phylo_tree_2, resource_speciesTree).
output(symmetric_comparison_operation, are_same_tree, resource_AreSameTree).
output(symmetric_comparison_operation, http_code_1, resource_HTTPCode).
output(symmetric_comparison_operation, ws_message_1, ws_response_message).

%%% Parent class : tree_operation/tree_generation
% class tree_extraction_operation

% class tree_retrieval_operation

% class tree_reconciliation
input(tree_reconciliation, tree_1, resource_speciesTree).
input(tree_reconciliation, tree_2, resource_geneTree).
output(tree_reconciliation, tree_3, resource_reconcileTree).

%%% Parent class : tree_operation/tree_information
% class tree_support_studies

% class tree_metadata_chronogram
input(tree_metadata_chronogram,phylo_tree_1,resource_speciesTree).
output(tree_metadata_chronogram,metadata_list_1,resource_metadata_tree_scaling).

%%% Parent class : tree_operation/tree_transformation
% class tree_scaling_operation
input(tree_scaling_operation, phylo_tree_1, resource_Tree).
output(tree_scaling_operation, phylo_tree_2, resource_Tree).

%%% Parent class : tree_operation/tree_visualization

%%% Parent class : convert_operation/data_format_conversion

%%% Parent class : look_up_operation/look_up_location
% class country_code_to_name
input(country_code_to_name, single_country_code_1, resource_CountryCode).
output(country_code_to_name, single_country_name_1, resource_CountryName).

%%% Parent class : look_up_operation/look_up_taxonomy
% class scientific_name_to_taxonomy
input(scientific_name_to_taxonomy, single_name_1, resource_ScientificName).

%%% Parent class : look_up_operation/look_up_scientific_name

%%%%%%%%%%%%%%%%%%%
% Hierarchy Level 4
%%%%%%%%%%%%%%%%%%%

%%% Parent class : list_operation/list_update_operation/list_update_add

%%% Parent class : list_operation/list_update_operation/list_update_delete

%%% Parent class : list_operation/list_update_operation/list_update_edit
% class list_update_edit_list_content

% class list_update_edit_list_metadata

%%% Parent class : species_operation/species_information_operation/species_images_operation

%%% Parent class : species_operation/species_information_operation/species_url_operation

%%% Parent class : taxon_operation/taxon_to_species_operation/taxon_to_species_by_country

%%% Parent class : taxon_operation/taxon_to_species_operation/taxon_to_species_by_genome

%%% Parent class : tree_operation/tree_comparison/branch_length_comparison_operation

%%% Parent class : tree_operation/tree_comparison/symmetric_comparison_operation

%%% Parent class : tree_operation/tree_generation/tree_extraction_operation
% class taxonomy_based_extraction
input(taxonomy_based_extraction, set_of_names_1, resource_SetOfTaxon).
output(taxonomy_based_extraction, phylo_tree_1, resource_speciesTree).
output(taxonomy_based_extraction, http_code_1, resource_HTTPCode).

% class phylogeny_based_extraction
input(phylogeny_based_extraction, set_of_names_1, resource_SetOfResolvedName).
output(phylogeny_based_extraction, phylo_tree_1, resource_speciesTree).
output(phylogeny_based_extraction, http_code_1, resource_HTTPCode).

% class gene_based_extraction
input(gene_based_extraction, set_of_genes_1, resource_SetOfGeneStrings).
output(gene_based_extraction, phylo_tree_1, resource_geneTree).
output(gene_based_extraction, phylo_tree_2, resource_geneTree).

%%% Parent class : tree_operation/tree_generation/tree_retrieval_operation

%%% Parent class : tree_operation/tree_transformation/tree_scaling_operation
% class gene_tree_scaling
input(gene_tree_scaling, phylo_tree_1, resource_geneTree).
output(gene_tree_scaling, phylo_tree_2, resource_geneTree).


% class species_tree_scaling
input(species_tree_scaling, phylo_tree_1, resource_speciesTree).
input(species_tree_scaling, method_1, phylomatic_method).
output(species_tree_scaling, phylo_tree_2, resource_speciesTree_with_BranchLengths).

%=======================================================================
%PART 6 : Define support rules - UPDATED
%=======================================================================
subClass(X,Y) :- class(X), class(Y), class(Z), subClass(Z,Y), subClass(X,Z).
subClass(X,Y) :- class(X), class(Y), subClass(X,Z), equalClasses(Y,Z).
subClass(X,Y) :- class(X), class(Y), subClass(Z,Y), equalClasses(X,Z).
isInstanceOf(X,Y) :- isInstanceOf_immediate(X,Z), subClass(Z,Y).
isInstanceOf(X,Y) :- isInstanceOf(X,Z), subClass(Z,Y).
equalClasses(X,Y) :- equalClasses(Y,X), class(X), class(Y).

%type_of(X,C) :- type_of(X,D), subClass(D,C).
subClass_immediate(X,Y) :- subClass(X,Y), not not_immediate(X,Y).
not_immediate(X,Y) :- subClass(X,Z), subClass(Z,Y), Z!=X, Z!=Y.

subClass(X,X) :- class(X).
%is_not_specific(O, C) :- type_of(O, C), type_of(O, C1), subClass(C1, C), C1 != C.
%is_most_specific(O, C) :- type_of(O, C), not is_not_specific(O, C).

%=======================================================================
%PART 7 : Define has_input and has_output
%=======================================================================
operation_class(X) :- class(X), subClass(X,operationClassification).

% Define has_input
has_input(C, N, I) :- input(C, N, I).
has_input(C, N, I):- subClass_immediate(C, C1),
                     has_input(C1, N, I),
                     not ab_input(C, C1, N, I).
ab_input(C, C1, N, I):- subClass_immediate(C, C1),
                        has_input(C1, N, I),
                        input(C, N, I1),
                        subClass(I1, I),
                        C1 != C,
                        not override_input(C, C1, N, I).

% Define has_ouput
has_output(C, N, O) :- output(C, N, O).
has_output(C, N, O):- subClass_immediate(C, C1),
                      has_output(C1, N, O),
                      not ab_output(C, C1, N, O).
ab_output(C, C1, N, O):- subClass_immediate(C, C1),
                         has_output(C1, N, O),
                         output(C, N, O1),
                         subClass(O1, O),
                         C1 != C,
                         not override_output(C, C1, N, O).

% Define meaning_operation
meaning_operation(A) :- has_input(A,N,I),
                        has_output(A,N2,O),
                        operation_class(A).


%=======================================================================
%PART 7.1 : Working for instance to single level of planning
%=======================================================================
operation(X) :- instance(X), 
                isInstanceOf(X,Y),
                class(Y), 
                subClass(Y,operationClassification).
instance_has_input(S, N, I) :- has_input(C, N, I),
                               instance(S),
                               isInstanceOf_immediate(S,C).
instance_has_output(S, N, O) :- has_output(C, N, O),
                                instance(S),
                                isInstanceOf_immediate(S,C).
% Define meaning_operation
mean_op(A) :- instance_has_input(A,N1,I),
              instance_has_output(A,N2,O),
              operation(A).

%=======================================================================
%PART 8 : Define which OUPUT and INPUT properties are OVERRIDEN or NOT
% Appear => Allow override ; disappear : do not allow overide (keep property of subclass only)
%=======================================================================
%override_output(names_extraction_operation,names_operation,set_of_names_1,resource_SetOfNames).
%override_output(names_extraction_web,names_extraction_operation,set_of_names_1,resource_SetOfNames).
%override_output(names_extraction_web,names_operation,set_of_names_1,resource_SetOfNames).

%=======================================================================
%PART 9 : Test to see result
%=======================================================================
%#show has_input/3.
%#show instance_has_input/3.
%#show has_output/3.
%#show instance_has_output/3.
%#show meaning_operation/1.
%#show instance_operation_has_input_has_data_format/3.
%#show instance_operation_has_output_has_data_format/3.
%#show mean_op/1.
%#show executable/2.