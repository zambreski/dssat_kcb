# dssat_kcb

This repository contains source code for running DSSAT version 4.7 with daily basal crop coefficients (KCB) read in from files.These coefficients were observed at the field-level using remote imagery. 

## Main modifications

In the control file, there are new options to be read to tell DSSAT whether it should look for forcing KCB files. The user is encouraged to study the control file (KSRT2001.SBX) provided as example in this respository.

These modifications are under the *FIELDS and *SIMULATION CONTROL sections.

*FIELDS
@L ID_FIELD WSTA....  FLSA  FLOB  FLDT  FLDD  FLDS  FLST SLTX  SLDP  ID_SOIL    KCID

@N OPTIONS     WATER NITRO SYMBI PHOSP POTAS DISES  CHEM  TILL   CO2   KCB
 1 OP              Y     Y     Y     N     N     N     N     Y     M     N


# Contacts

Head researchers: Travis Wiederstein and Vaishali Sharda
Coder: Zachary Zambreski
