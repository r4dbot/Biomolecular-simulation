#This script automates the loading of the ATCase structures and prepares them for easier comparisons. The comments provide explanations of each command.
#Reinitialize resets the PyMOL session
reinitialize
#Load the PDB file 1Q95 and name the object "R-state".
fetch 1Q95, R-state
#Load the PDB file 1RAI, specifically the biological assembly 1 file. This file contains the whole assembly as three symmetry-related states.
fetch 1RAI, type=pdb1
#Show all states, will display all three states at once so the whole assembly is visible. (This can also be done through the Movie menu.)
set all_states, 1
#Use the split_states command to generate each state of 1RAI as a separate object with the name root 1RAI. You should see three new objects in the object pane.
split_states 1RAI, 1, 3, 1RAI
#Delete the 1RAI object, to remove the now duplicate object.
delete 1RAI
#Rename all the chains in the three new objects so that their overall positions correspond to those in 1Q95 (the "R-state" object). Note: the order is important so that all the renaming works appropriately.
alter 1RAI0001 and chain D, chain="J"
alter 1RAI0002 and chain D, chain="K"
alter 1RAI0003 and chain D, chain="L"
alter 1RAI0001 and chain C, chain="D"
alter 1RAI0002 and chain C, chain="E"
alter 1RAI0003 and chain C, chain="F"
alter 1RAI0001 and chain B, chain="G"
alter 1RAI0002 and chain B, chain="H"
alter 1RAI0003 and chain B, chain="I"
alter 1RAI0001 and chain A, chain="A"
alter 1RAI0002 and chain A, chain="B"
alter 1RAI0003 and chain A, chain="C"
#Now that they all have separate chain names, we can merge all three objects into one new dodecamer object called T-state
create T-state, 1RAI0001 or 1RAI0002 or 1RAI0003
delete 1RAI0001
delete 1RAI0002
delete 1RAI0003
#turn off showing all states, to make sure we have everything in one state
set all_states, 0
