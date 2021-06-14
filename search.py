# -*- coding: utf-8 -*-
"""

PURPOSE:
    
INPUTS:
    
    (1)
    
OUTPUTS:
    
    (1)

AUTHOR: Zachary Zambreski, Kansas State University (2021)

Created on Wed May  5 14:30:45 2021

"""

#--------------------#
# LIBRARIES IMPORTED #
#--------------------#

import os

#------------------------#
# USER-DEFINED FUNCTIONS #
#------------------------#

#------#
# MAIN #
#------#

if __name__== "__main__":
    
    #--------#
    # INPUTS #
    #--------#
    
    rootdir = "./dssat"
    
    for folder, dirs, files in os.walk(rootdir):
        for file in files:
            if file.endswith('.for'):
                fullpath = os.path.join(folder, file)
                with open(fullpath, 'r') as f:
                    for line in f:
                        if "PRINT *" in line:
                            print(fullpath)
                            #break