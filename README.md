# demorocker

This repository illustrates the use of `Docker`, `renv`, and `R`. `R` is used to
run analyses, `renv` to set R packages and their versions, and `Docker` to specify
the OS (Ubuntu), the system libraries, and the version of `R`.


## Usage

**User needs to have `Docker` installed on the computer.**

1. Clone this repository
2. Open a terminal
3. Build the `Docker` image with: `sh docker build -t "demorocker" .`
4. Create a container based on this image:

```sh
docker run --rm -p 127.0.0.1:8787:8787 -e DISABLE_AUTH=true demorocker
```

5. On a web browser enter this URL: `127.0.0.1:8787`. It will open an RStudio Server instance.
6. To run the analysis:

```{r eval = FALSE}
source("make.R")
```

The R code will produced a figure in the folder `figures/`.


Alternatively to steps 1-4, you can run this command in a terminal:

```sh
docker run --rm -p 127.0.0.1:8787:8787 -e DISABLE_AUTH=true ahasverus/demorocker
```