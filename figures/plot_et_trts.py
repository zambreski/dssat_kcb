# -*- coding: utf-8 -*-
"""

PURPOSE: Plot daily ET for all treatments in ET.OUT

INPUTS/REQUIREMENTS:
    
    (1) Directory containing ".OSU" files from Alabama simulations
    (2) Spreadsheet with observed yields from NASS
      
    
OUTPUTS:
    
    (1) Three figure types
 

AUTHOR: Zachary Zambreski, Kansas State University (2020)

"""

#--------------------#
# LIBRARIES IMPORTED #
#--------------------#

from __future__ import division
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#------#
# MAIN #
#------#

if __name__== "__main__":
    
    #--------#
    # INPUTS #
    #--------#
    
    # File directory with DSSAT output 
    inDir = '../dssat/'
    
    # File prefix for DSSAT output. Files are formatted "AL0181**.OSU". Consistent
    # file formmating will always make future coding MUCH easier.
    iFile = "ET.OUT"
  
    # dssat output variable to plot
    var2get = 'EOPA'

#%%---------------------------------------------------------------------------#
    #--------------#
    # Process data #
    #--------------#

    inFile = inDir +iFile
    
    # Get rows 
    tInfo = {}
    
    eStarts = []; c= 0
    lines= open(inFile,'r').readlines()
    for line in lines:
        if line[:4] == '*RUN':
            eStarts.append(c)
        c+=1
  
    # Load the .OSU file using fixed width
    # If column widths aren't provided,assumes white space is delimeter
    # Skip rows that are metadata
    out = pd.DataFrame(columns = ['TRT', 'DOY',var2get])
    rSK = 8
    for n,s in enumerate(eStarts):
        inDSSAT = pd.read_fwf(inFile,skiprows = s +rSK,nrows= 160,header=0)
        inDSSAT['TRT'] = n +1
        out = out.append(inDSSAT[['TRT', 'DOY',var2get]])
    
    out = out.set_index('TRT')
#%%---------------------------------------------------------------------------#
    #----------- ---#
    # Create figure #
    #---------------#

    # Initialize the plot and properties   
    # Figure size (figsize) in inches (e.g. 6" by 3")
    fig,ax = plt.subplots(1,1,figsize=(15, 10))
    font = {'family' : 'Arial',
            'weight' : 'normal',
            'size'   :20}
    plt.rc('font', **font)
    degree_sign = u'\N{DEGREE SIGN}'
    fig.patch.set_facecolor('white')
    
    # Plot the x,y data from simulated DSSAT mean
    colors = ['r','b','g']
    for t,trt in  enumerate(out.index.unique()):
        sub = out.loc[trt]
        x = sub['DOY']
        y = sub[var2get]
        ax.plot(x,y,color = colors[t],marker= '.',markerfacecolor = 'white',markersize=10,
            markeredgecolor = colors[t],label = trt)
    
    # Plot fine-tuning. Change options such as axis labels, colors, background 
    # colors, font style, etc. There are thousands of different settings in
    # order to improve the asethetics of your plot. You may spend hours fine 
    # tuning. Googling "python matplotlib" with your question will most likely
    # returnthe API documentation for how to code a task 
    # (e.g. "python matplotlib how to set figure title)
    ax.yaxis.grid(linewidth =1,linestyle=':',color='w')  
    ax.xaxis.grid(linewidth =1,linestyle=':',color='whitesmoke')  
    ax.set_facecolor('gainsboro')
    ax.set_xlabel('DOY',fontweight='bold')
    ax.set_ylabel(var2get,fontweight = 'bold')
    