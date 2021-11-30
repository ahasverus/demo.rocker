## Based on the image RStudio iwth R 4.1.2 ----

FROM rocker/rstudio:4.1.2

MAINTAINER Nicolas Casajus <nicolas.casajus@fondationbiodiversite.fr>


## Install system libraries ----

RUN sudo apt update -yq \
  && sudo apt update -yq \
  && sudo apt install libxml2-dev -yq \
  && sudo apt install --no-install-recommends libxt6 -yq


## Copy project ----

ENV folder="/home/rstudio/"

COPY . $folder
RUN chown -R rstudio:rstudio $folder


## Set working directory ----

WORKDIR $folder


## Install R packages ----

RUN sudo -u rstudio R -e 'renv::restore()'
