# -*- coding: utf-8 -*-
"""

PURPOSE: Search for strings within in parent and child directories. This was 
used to find key variables within the DSSAT code
    
INPUTS:
    
    (1) The top-level directory to search
    
OUTPUTS:
    
    (1) Screen output

AUTHOR: Zachary Zambreski, Kansas State University (2021)

"""

#--------------------#
# LIBRARIES IMPORTED #
#--------------------#

import os

#------#
# MAIN #
#------#

if __name__== "__main__":
    
    #--------#
    # INPUTS #
    #--------#
    
    rootdir = "./dssat"     # Parent directory  (all child direcories)
    key     = "MEPHO"       # String to look for
    filext  = ".for"        # Only look in the fortran files
 
#%%--------------------------------------------------------------------------#
    #
    # Perform search
    #
    for folder, dirs, files in os.walk(rootdir):
        for file in files:
            if file.endswith(filext):
                fullpath = os.path.join(folder, file)
                with open(fullpath, 'r') as f:
                    for line in f:
                        if key in line:
                            print(fullpath)