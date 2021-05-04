PDB
https://www.rcsb.org/structure/1A3Q

ZINC
download all ligand 
-resveratrol
-curcumin
-ursolic acid

http://zinc.docking.org/substances/home/
Oc2ccc(CCc1cc(O)cc(O)c1)cc2 molecules 



SWISS-MODEL
use this link if you can't repair missing atom via autodock

https://swissmodel.expasy.org/interactive

convert pdb to FASTA forma with autobabel 
upload fasta -> build model 
wait till done 
project data -> download

grid box coordinate

80
80
80

x-c 18.201
y-c 44.811
z-c 2.754


1. receptor file
2. ligand files
3. conf_vs.txt
4. vina_windows.pl <- perl file
5. Ligands.txt <- list name of ligand files

write in command line windows cmd : 
$ perl vina_windows.pl
select ligand name files text
ligand.txt
running.....



literature
https://www.nature.com/articles/s41598-018-23768-7
https://pubmed.ncbi.nlm.nih.gov/28809009/
https://experiments.springernature.com/articles/10.1007/978-1-4939-7201-2_18

Source tutorial : https://www.youtube.com/watch?v=tFFxNTvvoJI

