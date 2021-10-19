# QBMS
<!-- https://shields.io/ -->
R package to Query the [Breeding Management System](https://bmspro.io/) database (using [BrAPI](https://brapi.org/) calls) in favor of scientists/researchers as targeted end-users who want to retrieve their experiments data directly into R statistical analyzing environment.

> ___Package Author and Maintainer:__ [Khaled Al-Shamaa](https://github.com/khaled-alshamaa) <k.el-shamaa (at) cgiar (dot) org>_
>
> ___Package Contributor:__ [Mariano Omar CRIMI](https://github.com/mcrimi) <m.crimi (at) cgiar (dot) org>_
>
> ___Package Contributor:__ Zakaria Kehel <z.kehel (at) cgiar (dot) org>_
>
> ___Package Copyright Holder:__ [International Center for Agricultural Research in the Dry Areas (ICARDA)](https://www.icarda.org/)_

## Breeding Management System
Breeding Management System ([BMS](https://bmspro.io/)) is an information management system developed by the Integrated Breeding Platform to help breeders manage the breeding process, from programme planning to decision-making. The BMS is customizable for most crop breeding programs, and comes pre-loaded with curated ontology terms for many crops (bean, cassava, chickpea, cowpea, groundnut, maize, rice, sorghum, soybean, wheat, and others). The BMS is available as a cloud application, which can be installed on local or remote servers and accessed by multiple users.

## BrAPI
The Breeding API ([BrAPI](https://brapi.org/)) project is an effort to enable interoperability among plant breeding databases. BrAPI is a standardized RESTful web service API specification for communicating plant breeding data. This community driven standard is free to be used by anyone interested in plant breeding data management.

## _Install_
```r
install.packages("remotes")
remotes::install_github("icarda-git/QBMS")
```

> _If you are not already an active BMS user, you can contact [IBP support](https://ibplatform.atlassian.net/servicedesk/customer/portal/4/group/30/create/60) to get access to a trial BMS server._

## _Example_
```r
# load the QBMS library
library(QBMS)

# config your BMS connection
set_qbms_config("https://www.bms-uat-test.net/ibpworkbench/controller/auth/login")

# login using your BMS account (interactive mode)
# or pass your BMS username and password as parameters (batch mode)
login_bms()

# list supported crops in the bms server
list_crops()

# select a crop by name
set_crop("maize")

# list all breeding programs in the selected crop
list_programs()

# select a breeding program by name
set_program("MC Maize")

# list all studies/trials in the selected program
list_trials()

# select a specific study/trial by name
set_trial("2018 PVT")

# get observation variable ontology in the selected study/trial
ontology <- get_trial_obs_ontology()

# list all environments/locations information in the selected study/trial
list_studies()
list_studies(2020)

# select a specific environment/location by name
set_study("2018 PVT Environment Number 1")

# select a specific study by location name (first match)
studies <- list_studies()
set_study(studies[studies$locationName == "BASF Bremen", "studyName"][1])

# retrieve data, general information, and germplasm list of the selected environment/location
data <- get_study_data()
info <- get_study_info()
germplasm <- get_germplasm_list()

# retrieve multi-environment trial data of the selected study/trial
MET <- get_trial_data()

# retrieve all environments/locations information in the selected program
program_studies <- get_program_studies()

# retrieve observations data of given germplasm aggregated from all trials in the selected program
germplasm_observations <- get_germplasm_data("BASFCORN-2-1")

```
## _Troubleshooting the installation_

1. If the installation of QBMS generates errors saying that some of the existing packages cannot be removed, you can try to quit any R session, and try to start R in administrator (Windows) or SUDO mode (Linux/Ubuntu) then try installing again.

2. If you get an error related to packages built under a current version of R, and updating your packages doesn’t help, you can consider overriding the error with the following code. _Note: This might help you install QBMS but may result in other problems. If possible, it’s best to resolve the errors rather than ignoring them._

```r
Sys.setenv("R_REMOTES_NO_ERRORS_FROM_WARNINGS"=TRUE)

remotes::install_github("icarda-git/QBMS", upgrade = "always")
```
