#R programming 
#18.06.2019 
#by Yusuf Kaymaz

#Working Directory
> getwd()
[1] "D:/R-3.5.2/bin/x64"

#Change Directory
>setwd(path)

#Save the Folder
save.image("18.06.2019.rdata")

#Remove memory
> rm(list=ls())
> ls()
character(0)
#Exist Packages
> installed.packages()
> require("yusuf") ##check package
Zorunlu paket yükleniyor: yusuf
Warning message:
In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘yusuf’

#Install Package
> install.packages("readxl")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/readxl_1.3.1.zip'
Content type 'application/zip' length 1529812 bytes (1.5 MB)
downloaded 1.5 MB

package ‘readxl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\kayma\AppData\Local\Temp\Rtmpywz2cH\downloaded_packages

> require("readxl")
Zorunlu paket yükleniyor: readxl
Warning message:
package ‘readxl’ was built under R version 3.5.3 
> remove.packages("readxl")
Removing package from ‘D:/R-3.5.2/library’
(as ‘lib’ is unspecified)