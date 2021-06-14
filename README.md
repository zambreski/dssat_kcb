# dssat_kcb

This repository contains source code for running DSSAT version 4.7 with daily basal crop coefficients (KCB) from forcing files.These coefficients were observed at the field-level using remote imagery. The forcing files mimic the structure of the weather files given that the temporal frequencies are the same. These forced values are currently only used when EVAP is set to "F" (FAO-56) or "O" (observed reference ET included in the weather files).

## Main modifications

In the control file, there are new options to be read to tell DSSAT whether it should look for forcing KCB files. The user is encouraged to study the control file (KSRT2001.SBX) provided as example in this respository. </br>

The control file modifications are under the *FIELDS and *SIMULATION CONTROL sections.

-------
<pre>
*FIELDS <br/>
@L ID_FIELD WSTA....  FLSA  FLOB  FLDT  FLDD  FLDS  FLST SLTX  SLDP  ID_SOIL    *KCID* </br>

KCID description: 4 letter prefix that points to the file. These files must have extension ***.KCB
</pre>
-------
<pre>
*SIMULATION CONTROLS <br/>
...</br>
@N OPTIONS     WATER NITRO SYMBI PHOSP POTAS DISES  CHEM  TILL   CO2   KCB <br/>
 1 OP              Y     Y     Y     N     N     N     N     Y     M     N </br>
 
KCB description: Set KCB to 'Y' (Yes) to tell DSSAT to look for KCB files. 
</pre>

### Contacts

Head researchers: Travis Wiederstein and Vaishali Sharda </br>
Coder: Zachary Zambreski
