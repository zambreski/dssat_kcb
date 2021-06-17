# -*- coding: utf-8 -*-
"""

PURPOSE: Run commands to compile DSSAT on windows. This script avoids having
to manually type them each time we make changes to the Fortran code. 

    This needs to be run from the command line in your Cygwin shell. For example, 
    in Cygwin navigate to the directory with this file and type:
        "python compile.py"

AUTHOR: Zachary Zambreski, Kansas State University (2021)

Created on Mon Apr 26 13:50:47 2021

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
    
    # FULL PATH ON YOUR OWN SYSTEM
    # WE need to set this; otherwise it will default to another location
    # Important when reading in input data files. Otherwise, they all need
    # to be in the top level directory, which clutters everything
    FULL_DSSAT_PATH = "/home/ztz/dssat_kcb/dssat"
    
    # Upper-level Directory where DSSAT is stored
    TIERDIR  = "./dssat/"
 
    # Set True if want to build from scratch. Really only necessary if you 
    # REALLY MESS something Up of it's your first time compiling on this 
    # machine. 
    FULLCLEAN = False

#%%--------------------------------------------------------------------------#
   
    # Change working directory
    os.chdir(TIERDIR)
    
    if FULLCLEAN:
        """ Clean any builds; start from scratch """
        try:
            os.system('cmake -P distclean.cmake')
            
            # Remove the current executable file
            os.system('rm dscsm047.exe')
        except:
            pass
        
        os.system('mkdir ./build')
        os.chdir('build')
        os.system("cmake .. -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=%s"%(FULL_DSSAT_PATH))
        #os.system('cmake .. -DCMAKE_BUILD_TYPE=RELEASE')

        os.system('make')
        
    else:
        
        ''' Recompile the scripts that were updated and created new exe '''      
        os.chdir('./build/')
        
        # Recompile any new files
        os.system('make')

    os.system('mv ./bin/dscsm047.exe ..')
    os.chdir('../')
    
    # Test the new model code on treatment file
    os.system('./dscsm047.exe MZCER047 A KSRT2001.MZX')
