https://en.wikipedia.org/wiki/List_of_protein_structure_prediction_software

Software Needed

https://salilab.org/modeller/
https://salilab.org/modeller/tutorial/basic.html
https://embnet.vital-it.ch/software/ClustalW.html
https://saves.mbi.ucla.edu/

Start
Install modeller 

grab protein sequence :

FASTA QIS30682.1

pdb
https://www.rcsb.org/structure/6WZQ
https://www.rcsb.org/structure/6M3M

https://embnet.vital-it.ch/software/ClustalW.html

grab files from installation directory 
...\Modeller10.1\examples\automodel 

model-multiple.py
loop.py

copy to working directory (Homology_modelling)

access
https://salilab.org/modeller/tutorial/basic.html
copy this line from 4.Model building

              assess_methods=(assess.DOPE,
                              #soap_protein_od.Scorer(),
                              assess.GA341))

paste to the model-multiple.py

Running the simulation
open modeller
modx.xx model-multiple.py

open log file
search DOPE score 
find most negative DOPE score (highly accurate)

repair the sequence
edit loop.py
running the simulation
modx.xx loop.py

check integrity file verify3d
https://saves.mbi.ucla.edu/

best result
run
target.B99990071
loop
target.BL00470001

Source:
part1 - preparation-files
https://www.youtube.com/watch?v=k_sa9pCzstU&ab_channel=BioinformaticsWithBB 
part2 - running simulation
https://www.youtube.com/watch?v=6Vihcp7IXHs&ab_channel=BioinformaticsWithBB

literature
https://journals.plos.org/ploscompbiol/article?id=10.1371%2Fjournal.pcbi.1007449
