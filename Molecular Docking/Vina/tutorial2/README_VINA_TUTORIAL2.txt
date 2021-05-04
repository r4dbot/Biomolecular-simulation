Multiple Ligand Docking with Autodock-Vina
part-2 commandline version (WSL2 Windows sublinux)

get WSL2 on windows

linux update-upgrade files:
$sudo apt-get update
$sudo apt-get upgrade

install autobabel :
$sudo apt install openbabel

install autodockvina :
$sudo apt install autodock-vina

pdb structure :
https://www.rcsb.org/structure/5CEN

check missing atom or build model via swiss modeller
download 5CEN FASTA from rscb
upload to swissmodel :
https://swissmodel.expasy.org/

download ligand files from ZINC database :
https://zinc.docking.org

Oc2cccc(C=Cc1ccc(O)cc1O)c2
https://zinc.docking.org/substances/?highlight=Oc2cccc%28C%3DCc1ccc%28O%29cc1O%29c2&sub_id-matches=Oc2cccc%28C%3DCc1ccc%28O%29cc1O%29c2

split the ligand files file :
$obabel -isdf *.sdf -osdf -O *.sdf --split

obminimize in the ligand files <- add charges :
$obminimize -ff MMFF94 -n 1000 *.sdf

convert to pdbqt format files :
$obabel -isdf *.sdf -opdbqt -O*.pdbqt

create conf file (look in the files preparation files) :

create .pl file download here or look in preparation files again :
https://drive.google.com/file/d/1Pr8Y9JdVOYwmufuuB9-2RIi6LUupaQzd/view

create name list of ligand files in the text files :
$ls >ligand.txt

running autodock_vina :
$perl vina_linux.pl

combine all result into one text file
$tail -n11 *.log>results.txt

ligand-number 38 is the most negative energy

file needed
1.receptor pdbqt
2.ligand .pdbqt from ligand_charged files
also from files in preparation file :
3.Vina_linux.pl
4.conf.txt

source :
https://www.youtube.com/watch?v=7YTzG2PtzlE&ab_channel=BioinformaticsWithBB
Bioinformatics With BB

literature :
https://www.nature.com/articles/s41598-018-23768-7
https://pubmed.ncbi.nlm.nih.gov/28809009/
https://experiments.springernature.com/articles/10.1007/978-1-4939-7201-2_18
