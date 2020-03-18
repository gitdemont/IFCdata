# Data for Imaging Flow Cytometry (IFC)

## INSTALLATION

### On Windows (tested 7 and 10)

### On MacOS (tested on High Sierra)

### On Linux (tested on Ubuntu 16.04 LTS)

### in R

- install IFCdata

> either

library(devtools)

install_github(repo = "gitdemont/IFCdata", ref = "master", dependencies = FALSE)

> or

install.packages("IFCdata", repos = "https://gitdemont.github.io/IFCdata/", type = "source")

## USAGE

library(IFCdata)

help(IFCdata)

## DETAILS

Data files of UT7/EPO cells stained to study cell cycle data acquired on ImageStream MkII(C) cytometer (Amnis(C), part of Luminex(C)). 

## DISCLAMER

- You are using this package **on your own risk!**

- We do not guarantee **privacy nor confidentiality**.

- This program is distributed in the hope that it will be useful, but **WITHOUT ANY WARRANTY**; without even the implied warranty of **MERCHANTABILITY** or **FITNESS FOR A PARTICULAR PURPOSE**. In no event shall the copyright holders or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this software, even if advised of the possibility of such damage.
