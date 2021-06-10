*SOILS: General DSSAT Soil Input File
! DSSAT v4.7; 09/01/2017
!
! Standard Soil Profiles
!
! The following generic information was developed by A.J. Gijsman:
!
! - BD was estimated as BD = 100 / (SOM% / 0.224 + (100 - SOM%) / mineral BD)  
!   (Adams, 1973; Rawls and Brakensiek, 1985).
! - LL and DUL are according to Saxton et al., 1986.
! - SAT was taken as a fraction of porosity (Dalgliesh and Foale, 1998):
!   0.93 for soil classes S, SL and LS; 0.95 for soil classes L, SIL, SI,
!   SCL and SC; and 0.97 for soil classes C, CL, SIC and SICL.
!   For this, porosity was estimated as: POR = 1 - BD / APD (in which APD
!   is the adjusted particle density, i.e. corrected for SOM; Baumer and Rice, 1988).
! - The ranges of LL and DUL values were calculated by stepping through the
!   complete texture triangle in steps of 1% sand, 1% silt and 1% clay (>5000 
!   combinations), but with the texture limitations that Saxton set for his method
!   taken into consideration. For SAT, these limitations do not hold, as this was
!   based on POR and not on Saxton. See Gijsman et al., 2002.
! - The root growth distribution function SRGF was was calculated as:
!   SRGF = 1 * EXP(-0.02 * LAYER_CENTER); SRGF was set 1 for LAYER_BOTTOM <= 15.
!
! SOIL CLASS       BD                LL               DUL               SAT
! ========== =============     =============     =============     =============
!   C        1.129 - 1.512     0.220 - 0.346     0.330 - 0.467     0.413 - 0.488
!   CL       1.243 - 1.502     0.156 - 0.218     0.282 - 0.374     0.417 - 0.512
!   L        1.245 - 1.483     0.083 - 0.156     0.222 - 0.312     0.415 - 0.501
!   LS       1.353 - 1.629     0.059 - 0.110     0.137 - 0.185     0.355 - 0.416
!   S        1.446 - 1.574     0.055 - 0.085     0.123 - 0.158     0.374 - 0.400
!   SC       1.501 - 1.593     0.195 - 0.294     0.276 - 0.389     0.376 - 0.409
!   SCL      1.475 - 1.636     0.132 - 0.191     0.213 - 0.304     0.360 - 0.418
!   SI       0.978 - 1.464     0.096 - 0.099     0.299 - 0.307     0.442 - 0.488
!   SIC      1.307 - 1.446     0.224 - 0.326     0.379 - 0.456     0.455 - 0.489
!   SICL     1.248 - 1.464     0.155 - 0.219     0.324 - 0.392     0.448 - 0.511
!   SIL      0.968 - 1.464     0.082 - 0.152     0.240 - 0.333     0.439 - 0.547
!   SL       1.142 - 1.647     0.066 - 0.133     0.164 - 0.243     0.348 - 0.499
!
!======================================================================================================
! Start of Generic soil profiles
!======================================================================================================
!
! The 12 Generic soils for SOIL.SOL, as estimated by Arjan Gijsman:
!
! - LL, DUL are according to the Nearest Neighbor method (Jagtap et al, 2004)
! - Ksat at -99 
! - BD according to Gijsman et al (2002)
! - SAT based on the APSRU manual (Dalgliesh and Foale, 1998); i.e. 93-97% of porosity
!   depending on the soil type) in which porosity is according to Baumer and Rice (1988).
!
! References
! Adams W.A. 1973. The effect of organic matter on the bulk and true densities of some
!   uncultivated podzolic soils. J. Soil Science 24, 10-17.
! Baumer O.W. and Rice J.W. 1988. Methods to predict soil input data for DRAINMOD. 
!   Am. Soc. Agr. Eng. Paper 88-2564
! Dalgliesh, N.P., and M.A. Foale. 1998. Soil Matters – monitoring soil water and nitrogen
!   in dryland farming. CSIRO, Agricultural Production Systems Research Unit, 
!   Toowoomba, Queensland, Australia. 122 pp.
! Gijsman A.J., Jagtap S.S., Jones J.W. 2002. Wading through a swamp of complete confusion: 
!   how to choose a method for estimating soil water retention parameters for crop models. 
!   European Journal of Agronomy, 18: 75-105.
! Jagtap S.S., Lal U., Jones J.W., Gijsman A.J., Ritchie J.T. 2004. A dynamic nearest-neighbor
!   method for estimating soil water parameters. Transactions of ASAE 47: 1437-1444
! Rawls W.J. and Brakensiek D.L. 1985. Prediction of soil water properties for hydrologic
!   modeling. In: Jones, E.B. and Ward, T.J. (Eds.), Proc. Symp. Watershed Management
!   in the Eighties. April 30-May 1, 1985, Denver, CO. Am. Soc. Civil Eng., 
!   New York, NY. pp.293-299.
! Saxton K.E., Rawls W.J., Romberger J.S., Papendick R.I. 1986. Estimating generalized soil-water
!   characteristics from texture. Soil Sci. Soc. Am. J. 50, 1031-1036
!
!======================================================================================================

*KSFC000001  SSURGO      SIL      201  Beeler Silt Loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6    .6    61     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    20   -99    .2  .405  .459     1   2.8  1.33     2    24    55     0   -99     8   -99    17   -99
    61   -99  .203  .388  .467  .445  2.62  1.33    .8    31    58     0   -99     8   -99    16   -99
   142   -99  .182  .351  .469  .131   2.8  1.33    .6    28    53     0   -99     8   -99    16   -99
   201   -99  .162  .339  .498  .032  2.62  1.25    .6    24    58     0   -99     8   -99    17   -99

*KSFC000002  SSURGO      SCL      152  Las Clay Loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6   .25    73     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    20   -99  .201  .308  .442     1  1.02   1.4   .75    31    19   -99   -99     8   -99    17   -99
    79   -99  .181  .297  .424  .372  1.02  1.45   .75    27    25   -99   -99     8   -99    14   -99
   152   -99  .058  .132  .392  .099 33.03  1.55   .25     5    17   -99   -99     8   -99     6   -99

*KSFC000003  SSURGO      SL       152  Manter Fine Sandy loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6    .6    64     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    43   -99  .121  .228  .442     1 10.16   1.4   .75    15    24     0   -99   7.2   -99     9   -99
   152   -99  .106  .206  .427  .142 10.16  1.45   .35    14    26     0   -99   7.2   -99     7   -99

*KSFC000004  SSURGO      SIL      201  Richfield Silt Loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6    .6    61     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    15   -99  .202  .414  .488     1   3.3  1.25  2.05    24    58     0   -99   7.2   -99    19   -99
    43   -99  .263  .454  .517   .56  1.02  1.18  1.55    39    49     0   -99   7.5   -99    30   -99
    64   -99   .19  .388  .522  .343  1.02  1.18    .7    29    66     0   -99   7.5   -99    20   -99
   201   -99  .168  .332  .506  .071   3.3  1.23   .45    26    53     0   -99   8.4   -99    17   -99

*KSFC000005  SSURGO      L        201  Satanta Loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6    .6    73     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    25   -99  .172  .342  .451     1   3.3  1.35  2.05    18    39     0   -99     7   -99    15   -99
    61   -99  .176  .312  .442  .423  1.02   1.4   .75    26    35     0   -99   7.5   -99    20   -99
   122   -99  .126  .252  .442   .16  1.02   1.4   .75    16    33     0   -99   7.9   -99    11   -99
   201   -99  .135  .272  .426   .04   3.3  1.45    .5    19    41     0   -99   7.9   -99    13   -99

*KSFC000006  SSURGO      SIL      201  Ulysses Silt Loam
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6    .6    61     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    20   -99  .199  .402  .446     1   3.3  1.37  1.75    25    57     0   -99   7.2   -99    22   -99
    36   -99  .203  .398  .467  .571  1.02  1.32  1.35    28    57     0   -99   7.9   -99    24   -99
    71   -99  .186  .367  .471  .343  1.02  1.32   .75    28    57     0   -99   7.9   -99    24   -99
   201   -99  .166  .334  .466  .066   3.3  1.34   .55    25    54     0   -99   8.2   -99    20   -99

*KSFC000007  SSURGO      S        203  Valent Fine Sand
@SITE        COUNTRY          LAT     LONG SCS FAMILY
 Finney      USA               -99     -99 -99
@ SCOM  SALB  SLU1  SLDR  SLRO  SLNF  SLPF  SMHB  SMPX  SMKE
    BN   .13     6   .85    83     1     1 IB001 IB001 IB001
@  SLB  SLMH  SLLL  SDUL  SSAT  SRGF  SSKS  SBDM  SLOC  SLCL  SLSI  SLCF  SLNI  SLHW  SLHB  SCEC  SADC
    10   -99  .066  .129  .388     1 10.16  1.55   .75     4     5     0   -99   7.2   -99     3   -99
   203   -99  .058  .116  .396  .119 10.16  1.54   .25     5     9     0   -99   7.3   -99     3   -99
