Data from a qualitative study on collaboration in science
================
Michał Bojanowski (Kozminski Univeristy), Dominika Czerniawska
(University of Manchester and University of Warsaw), Wojciech Fenrich
(University of Warsaw)

  - [Data structure](#data-structure)
      - [Node data](#node-data)
      - [Collaboration networks](#collaboration-networks)
      - [Resource “flow” networks](#resource-flow-networks)
  - [Download links](#download-links)
  - [Installation](#installation)
  - [Acknowledgements](#acknowledgements)

<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/recon-icm/reconqdata.svg?branch=master)](https://travis-ci.org/recon-icm/reconqdata)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/recon-icm/reconqdata?branch=master&svg=true)](https://ci.appveyor.com/project/recon-icm/reconqdata)
<!-- badges: end -->

-----

This is a dataset built from a qualitative study of 40 Individual
in-Depth Interviews (IDI) conducted in the period April-August of 2016
as a part of the [RECON](recon.icm.edu.pl) project on collaboration in
Polish science. This repository is an R package, but the data is also
stored in portable CSV format so that it can be used with any other
analytical software.

## Data structure

The data is contained in three tables as shown in the diagram below:

    #> Registered S3 methods overwritten by 'ggplot2':
    #>   method         from 
    #>   [.quosures     rlang
    #>   c.quosures     rlang
    #>   print.quosures rlang

![](man/figures/README-data-model.png)

### Node data

The `nodes` data frame has

### Collaboration networks

### Resource “flow” networks

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

## Acknowledgements

Authors thank (Polish) [National Science Centre](https://ncn.gov.pl) for
support through SONATA grant 2012/07/D/HS6/01971 for the project
*Dynamics of Competition and Collaboration in Science: Individual
Strategies, Collaboration Networks, and Organizational Hierarchies*
(<http://recon.icm.edu.pl>).
