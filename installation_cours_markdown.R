Library <- function(Packages) {
  InstallAndLoad <- function(Package) {
    if (!Package %in% installed.packages()[, 1]) {install.packages(Package, repos="https://cran.rstudio.com/")}
    require(Package, character.only = TRUE)
  }
  invisible(sapply(Packages, InstallAndLoad))
}
# Ajouter les packages nécessaires ici
Library(c("rmarkdown", "bookdown","knitr"))

# télécharger et installer MikTex selon votre susytème d'exploitation
# https://miktex.org/download
# petite modif d'essai sur Git 
# Autres modif d'essai 


# télécharger et installer Rtools depuis le  site
#https://cran.r-project.org/bin/windows/Rtools/
  

# quitter et redémarrer Rstudio

Sys.which("make") ## si cette commande doit ceci "C:\\rtools40\\usr\\bin\\make.exe"


install.packages("devtools")
library("devtools")
install_github("EcoFoG/EcoFoG")


install.packages('tinytex') # tinytex permet une mise à jour de latex avant chaque tricotages
tinytex::install_tinytex()  # install TinyTeX

library(rmarkdown)
library(bookdown)


library("EcoFoG")

#### Commentaire KV
