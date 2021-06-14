# dssat_kcb

This repository contains source code for running the Decision Support System for Agrotechnology Transfer (DSSAT) version 4.7 with daily basal crop coefficients (KCB) from forcing files.These coefficients were observed at the field-level using remote imagery. The forcing files mimic the structure of the weather files given that the temporal frequencies are the same. These forced values are currently only used when EVAP is set to "F" (FAO-56) or "O" (observed reference ET included in the weather files). </br>

For the original source code, users are encourage to visit the corresponding github repositiory: https://github.com/DSSAT/dssat-csm-os </br>

Python files included were to facillitate the compilation process and any post-processing. </br>

## Modification description ##

In the control file, there are new options described below that inform DSSAT whether it should look for forcing KCB files. The user is encouraged to study the control file (KSRT2001.SBX) provided as example in this respository. If these files do not exist, an error will be thrown. </br>

The control file modifications are under the *FIELDS and *SIMULATION CONTROL sections.

-------
<pre>
*FIELDS 
@L ID_FIELD WSTA....  FLSA  FLOB  FLDT  FLDD  FLDS  FLST SLTX  SLDP  ID_SOIL    KCID
 1 KSRT0001 RT01       -99     0 IB000     0     0 00000 -99    180  KSFC000004 RT08 </br>
KCID description: 4 letter prefix that will be used to create path to the file. These files must have the extension "KCB". 
In this example, the file name should be RT082001.KCB. The characters after the first four match the weather file.

</pre>
-------
<pre>
*SIMULATION CONTROLS 
...
@N OPTIONS     WATER NITRO SYMBI PHOSP POTAS DISES  CHEM  TILL   CO2   KCB 
 1 OP              Y     Y     Y     N     N     N     N     Y     M     N </br>
 
KCB description: Set KCB to 'Y' (Yes) to tell DSSAT to look for KCB files. The default value is "N" (No). 
</pre>

#### Contacts

Head researchers: Travis Wiederstein and Vaishali Sharda </br>
Coder: Zachary Zambreski
