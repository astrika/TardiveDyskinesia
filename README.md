# Tardive Dyskinesia
Exploring variants and candidate genes associated with TD

Inspecting Genetic Variations Associated to Tardive Dyskinesia: An Exploratory Study

Final Project for assignment of BMI5330, View TDMethods.pdf for my exploratory pipeline


AssociatedVaraints:
Contains variants in each inspected candidate gene, 
these files were created by getVariantsperGene.sh


SCREENbyENCODEdata:
Contains bed files of ENCODE annotated cis-regulatory regions for each inspected candidate gene, 
these files were output of SCREENbyENCODE web-based tool

getMatches.R: Gets matches for variants located within specified ENCODE regulatory regions. It returns gene name, variant position, and regulatory region information.

