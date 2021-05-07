# Comparative modeling with multiple templates
from modeller import *              # Load standard Modeller classes
from modeller.automodel import *    # Load the AutoModel class

log.verbose()    # request verbose output
env = Environ()  # create a new MODELLER environment to build this model in

# directories for input atom files
env.io.atom_files_directory = ['.', '../atom_files']

a = AutoModel(env,
              alnfile  = '1.ali', # alignment filename
              knowns   = ('6M3M', '1WZQ'),     # codes of the templates
              sequence = 'target')               # code of the target
              assess_methods=(assess.DOPE,
                              #soap_protein_od.Scorer(),
                              assess.GA341))
a.starting_model= 1                 # index of the first model
a.ending_model  = 100               # index of the last model
                                    # (determines how many models to calculate)
a.make()                            # do the actual comparative modeling
