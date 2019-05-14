Data from a qualitative study on collaboration in science
================
Michał Bojanowski (Kozminski Univeristy), Dominika Czerniawska
(University of Manchester and University of Warsaw), Wojciech Fenrich
(University of Warsaw)

  - [Download links](#download-links)
  - [Installation](#installation)
  - [Example](#example)
  - [Acknowledgements](#acknowledgements)

<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/recon-icm/reconqdata.svg?branch=master)](https://travis-ci.org/recon-icm/reconqdata)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/recon-icm/reconqdata?branch=master&svg=true)](https://ci.appveyor.com/project/recon-icm/reconqdata)
<!-- badges: end -->

-----

This is a dataset

Data model:

``` r
reconqdata:::plot_data_model()
```

## Download links

This is an R package, but you can download the files in CSV format using
links below:

  - [Nodes and their attributes
    (CSV)](https://github.com/recon-icm/reconqdata/blob/master/data-raw/nodes.csv)
  - [Collaboration ego-networks edgelist
    (CSV)](https://github.com/recon-icm/reconqdata/blob/master/data-raw/collaboration.csv)
  - [Resource contributions in ego-networks
    (CSV)](https://github.com/recon-icm/reconqdata/blob/master/data-raw/collaboration.csv)

## Installation

This is an R package so you can install it directly from GitHub using:

``` r
remotes::install_github("recon-icm/reconqdata")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(reconqdata)
## basic example code
```

## Acknowledgements

Authors thank (Polish) [National Science Centre](https://ncn.gov.pl) for
support through SONATA grant 2012/07/D/HS6/01971 for the project
*Dynamics of Competition and Collaboration in Science: Individual
Strategies, Collaboration Networks, and Organizational Hierarchies*
(<http://recon.icm.edu.pl>).
