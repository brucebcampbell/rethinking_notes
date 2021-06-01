if(!require(rstan)){
  install.packages("rstan")
  library(rstan)
}

if(!require(bayesplot)){
  install.packages("bayesplot")
  library(bayesplot)
}


if(!require(cmdstanr)){
  library(devtools)
  install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
  library(cmdstanr)
  check_cmdstan_toolchain()
  # Install the cmdstan cpp package
  install_cmdstan(cores = 2)
  #test
  cmdstan_version()
  file <- file.path(cmdstan_path(), "examples", "bernoulli", "bernoulli.stan")
  mod <- cmdstan_model(file)
}


library(cmdstanr)
library(posterior)
library(bayesplot)
instcolor_scheme_set("brightblue")


if(!require(rethinking)){
  install.packages(c("coda","mvtnorm","devtools","loo","dagitty"))
  devtools::install_github("rmcelreath/rethinking")
    library(rethinking)
}



