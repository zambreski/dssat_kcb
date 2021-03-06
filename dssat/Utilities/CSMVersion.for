!=======================================================================
!  MODULE CSMVersion
!  07/05/2018 CV  Written
!=======================================================================

      MODULE CSMVersion
!     Contains defintion of version and branch which will be
!     used throughout the model.

!=======================================================================

!     Global CSM Version Number
      TYPE VersionType
        INTEGER :: Major = 4
        INTEGER :: Minor = 7
        INTEGER :: Model = 5
        INTEGER :: Build = 35
      END TYPE VersionType
      TYPE (VersionType) Version
!     CMake no longer able to change the branch name, do it manually.      
!     CHARACTER(len=*), PARAMETER :: VBranch = '-main'
      CHARACTER(len=*), PARAMETER :: VBranch = '-develop'

!     Version history:  
!       4.7.5.35 chp 04/14/2021 Chia model; modify comparisons with small numbers; 
!                               csv output for rice.  
!       4.7.5.34 chp 04/04/2021 Forecast mode: FODAT = Last Weather date +1 if no SimCtrl.  
!       4.7.5.33 chp 04/04/2021 ASCE potential evapotranspiration enabled for cotton, soybean   
!       4.7.5.32 chp 03/29/2021 Model check based on Simulation.CDE   
!       4.7.5.31 chp 03/25/2021 Forecast output weather yeardoy, & minor other   
!       4.7.5.30 chp 03/05/2021 Minor updates, SW initialization limits,  
!                               Soil N mass balance reporting, output WYear
!       4.7.5.29 chp 02/08/2021 Forecast improvments, SRAD 0.1 limit
!       4.7.5.28 chp 01/18/2021 Second part of ETPHOT protections
!       4.7.5.27 chp 01/14/2021 ALOHA-pineapple model updates, Jhonny Vasquez
!       4.7.5.26 chp 01/07/2021 Forecast mode bugfix on century for historical weather
!       4.7.5.25 chp 12/30/2020 In-season yield forecast mode added, RNMODE = "Y"
!       4.7.5.24 gh  12/11/2020 READS.OUT removed from CSM; WARNING.OUT removed from YCA
!       4.7.5.23 gh  11/13/2020 ETPHOT corrections: phase 1; zero divide corrections
!       4.7.5.22 gh  11/13/2020 Minor updates; sorghum ecotype file
!       4.7.5.21 chp 10/09/2020 Y4K- 4 digit years in weather file
!       4.7.5.20 chp 10/09/2020 Minor bug fixes 
!       4.7.5.19 gh  10/02/2020 Quinoa added as a new crop 
!       4.7.5.18 chp 08/03/2020 NWheat cultivar/ecotype file changes, ozone response 
!                               SAMUCA initialization bugfix
!       4.7.5.17 chp 07/31/2020 NWheat pest linkage, Maize pest bug fix, 
!       4.7.5.16 chp 07/30/2020 YCA improvements (new genotype files), planting
!                               date options for CSCER, CSCRP, CSYCA bug fix 
!       4.7.5.15 chp 07/28/2020 SAMUCA sugarcane model, safflower improvements, 
!                               update fertilizer codes
!       4.7.5.14 chp 12/11/2019 Flexible fertilizer
!       4.7.5.13 chp 12/11/2019 Cassava photoperiod sensitivity
!       4.7.5.12 chp 11/13/2019 Soil C balance routines
!       4.7.5.11 chp 10/28/2019 Tef model
!       4.7.5.10 chp 08/02/2019 PRCP fix for CROPGRO
!       4.7.5.9  chp 05/20/2019 Hotfix sugarbeet
!       4.7.5.8  chp 03/05/2019 Rice cultivar changes - temperature parameters
!       4.7.5.7  chp 03/05/2019 Hotfix SoilNi.OUT
!       4.7.5.6  chp 02/21/2019 Release version
!       4.7.5.5  chp 02/21/2019 pre-release testing
!       4.7.5.4  chp 02/20/2019 Cassava improvements, licensing, MacOS flags
!       4.7.5.3  chp 01/15/2019 Rice G5, Fortran flags, command line messages
!       4.7.5.2  chp 12/19/2018 Release version
!       4.7.5.1  chp 12/18/2018 with sorghum changes (rolled back)
!       4.7.5.0  chp 12/18/2018 Pre-release version
!       4.7.2.3  chp 10/25/2018 Rice - G5 parameter (rolled back for v4.7.5)  
!       4.7.2.2  chp 10/25/2018 Sugarbeet, Forage, Cassava,    
!                               ASCE ET added (on hold),
!                               Fixed bug with maize byproduct harvest percentage 
!       4.7.2.1  chp 07/08/2018 Use CSMVersion, minor bug fixes, Linux hacks, 
!                               VSCode files
!       4.7.2.0  chp 05/07/2018 v4.7.2 Release 2018 Workshop
!       4.7.1.0  chp 10/27/2017 v4.7.1 Release
!       4.7.0.0  chp 08/09/2017 v4.7.0 Release
!       4.6.5.1  chp 05/10/2017 v4.6.5 Release 2017 Workshop  
!       4.6.0.1  chp 06/28/2011 v4.6.0 Release
!       4.5.1.0  chp 10/10/2010 V4.5.1 Release
!       4.0.2.0  chp 08/11/2005 v4.0.2 Release
!       4.0.1.0  chp 01/28/2004 v4.0.1 Release 

!=======================================================================
      END MODULE CSMVersion

