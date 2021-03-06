# dssat_kcb
DSSAT cropping systems model: KCB option

The Decision Support System for Agrotechnology Transfer: KCB option (DSDAT_KCB) allows users to use daily basal crop coefficients (KCB) from forcing files in the caclulation of potential evapotranspiration. These coefficients were observed at the field-level using remote imagery. The forcing files mimic the structure of the weather files given that the temporal frequencies are the same. These forced values are currently only used when EVAP is set to "F" (FAO-56) or "O" (observed reference ET included in the weather files). All the source code is the /dssat/ folder. Many fortran files were modified for this project (InputModule, Weather, SPAM, and Utilities modules) </br>

For the original source code, users are encourage to visit the corresponding github repository: https://github.com/DSSAT/dssat-csm-os.  </br>

Python files included were to facillitate the compilation process and any post-processing. </br>

## Modification description ##

In the control file, there are new options described below that inform DSSAT whether it should look for forcing KCB files. The user is encouraged to study the control file (KSRT2001.SBX) provided as example in this respository. If these files do not exist, an error will be thrown. </br>

The control file modifications are under the *FIELDS and *SIMULATION CONTROL sections.

<pre>
*FIELDS 
@L ID_FIELD WSTA....  FLSA  FLOB  FLDT  FLDD  FLDS  FLST SLTX  SLDP  ID_SOIL    KCID
 1 KSRT0001 RT01       -99     0 IB000     0     0 00000 -99    180  KSFC000004 RT08 </br>
 
KCID description: 4 letter prefix that will be used to create path to the file. These files must have the extension "KCB". 
In this example, the file name should be RT082001.KCB. The characters after the first four match the weather file.

</pre>

<pre>
*SIMULATION CONTROLS 
...
@N OPTIONS     WATER NITRO SYMBI PHOSP POTAS DISES  CHEM  TILL   CO2   KCB 
 1 OP              Y     Y     Y     N     N     N     N     Y     M     N </br>
 
KCB description: Set KCB to 'Y' (Yes) to tell DSSAT to look for KCB files. The default value is "N" (No). 
</pre>

## Compilation ##

Users should follow the steps outlined in the original DSSAT repository (see above) to compile the source code into an executable application that can be called on the command line. It is important to note that new lines were added in CMakeLists.txt file to account for new fortran files added and to remove certain link flags. Users should examine this file and make appropriate modifications that might be necessary for comipiling on their computer architecture.  

## Contacts ##

Head researchers: Travis Wiederstein and Vaishali Sharda </br>
Coder: Zachary Zambreski

-----------
<p align="center">
<img src = "/figures/figures/ETAA.png" width = "400">
<img src = "/figures/figures/KCAA.png" width = "400">
 </p>
 <p align="center">
 File structure of KCB file </br>
 <img src = "/figures/figures/KCB_File_example.png" width = "400">
</p>
