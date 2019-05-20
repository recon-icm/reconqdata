
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Data from a qualitative study on collaboration in science

Michał Bojanowski (*Kozminski Univeristy*), Dominika Czerniawska
(*University of Manchester* and *University of Warsaw*), Wojciech
Fenrich (*University of Warsaw*)

> Authors thank (Polish) [National Science Centre](https://ncn.gov.pl)
> for support through SONATA grant 2012/07/D/HS6/01971 for the project
> *Dynamics of Competition and Collaboration in Science: Individual
> Strategies, Collaboration Networks, and Organizational Hierarchies*
> (<http://recon.icm.edu.pl>).

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

## Data collection

Data consists of 40 individual in-depth interviews conducted between
April and August 2016 by two interviewers. The interviewees mentioned
333 collaborators in total. The sample consists of 20 female and 20 male
scientists from six Polish cities. Respondents represented a broad range
of disciplines: natural sciences, social sciences, life sciences, the
humanities, engineering, and technology on different levels of career
from PhD candidates to professors.

Each interview consisted of several parts two of which are of relevance
here:

1.  Respondents were asked to name up to 10 important collaborators
    during last 5 years. Each collaborator was discussed separately
    resulting with information about gender, scientific degree,
    nationality, and university department (if possible). Collected data
    is available in the `nodes` table described below.
2.  During the interview a network of collaboration among collaborators
    mentioned in (1) was reconstructed using corkboard, pins, and rubber
    bands. The corkboards were photographed and later digitized into the
    `collaboration` table described below.
3.  For each collaborator the respondents were asked about
    academically-relevant resources he/she contributed to the
    collaboration and what resources were contributed by the
    collaborator. Interviews were audio-recorded and later transcribed.
    The text of the transcripts was analyzed using QDA Miner Lite\[1\]
    in order to code resources engaged by respondents (the egos) and
    their collaborators (the alters) to every collaboration. The coding
    was performed by two persons. Random sample of the interviews was
    double-checked by different researchers to ensure reliability. The
    data is available in table `resources` and described in detail
    below.

While collaboration networks assembled from part (2) include alter-alter
ties, the data on resources is available only for ego-alter dyads.

## Data structure

The data is contained in three tables as shown in the diagram below:

![](man/figures/README-data-model.png)

In all tables the `NA` symbol (Not Available) is used to encode missing
information.

### Node data

The `nodes` table has 374 rows and the following 7 columns:

  - `id_interview` – Unique interview identification number
  - `id_node` – Node number unique within each interview. Value `0`
    corresponds to the respondent (the ego)
  - `is_ego` – A binary variable which is equal to `1` for the
    respondents (the egos) and `0` otherwise.
  - `is_polish` – A binary variable which is equal to `1` if the
    researcher is affiliated with a Polish academic institution and `0`
    otherwise.
  - `department` – A numeric variable providing information whether two
    persons are affiliated with the same department at the same academic
    institution. Two researchers \(i\) and \(j\) mentioned in the same
    interview are affiliated with the same department if the have valid
    values on variable `department` and these values are equal.
  - `scidegree` – Character variable encoding scientific degree. Values
    are `"mgr"`=MA, `"dr"`=PhD, `"drhab"`=habilitated PhD, and
    `"prof"`=full professor.
  - `female` – Binary variable which is equal to `1` if the researcher
    is female and `0` for males.

### Collaboration networks

The `collaboration` table has 1732 rows and the following 3 columns:

  - `id_interview` – Unique interview identification number
  - `from` and `to` – Node numbers referencing `id_node` column from the
    `nodes` table. As `id_node` in table `nodes` the values are unique
    within each interview. Pair of researchers declared as
    collaborators. For example a row with `id_interview=2`, `from=1`,
    and `to=2` indicates that in the interview 2 nodes 1 and 2 where
    mentioned by the respondent as collaborators.

### Resource “flow” networks

The `resources` table has 1761 rows and the following 4 columns:

  - `id_interview` – Unique interview identification number.
  - `from` and `two` – Node numbers referencing `id_node` column from
    the `nodes` table. As `id_node` in table `nodes` the values are
    unique within each interview.
  - `code` – Character variable indicating what type of resource was
    declared to flow from researcher `from` to researcher `to` from
    interview `id_interview`.

Possible values for variable `code` are:

| code                               |
| :--------------------------------- |
| career\_development                |
| conceptualization                  |
| contacts\_in\_academia             |
| data\_analysis                     |
| data\_curation                     |
| data\_or\_other\_sources           |
| drafting                           |
| equipment                          |
| formal\_administration             |
| funding\_acqusition                |
| investigation                      |
| knowledge\_other                   |
| methodology                        |
| motivation                         |
| non\_academic\_contacts            |
| other\_charactersitics             |
| other\_input                       |
| prestige                           |
| professional\_achievements\_formal |
| project\_administration            |
| proofreading                       |
| prototype\_construction            |
| software\_creation                 |
| supervision\_in                    |
| traits\_of\_character              |

## Example

Below are example data and plots from interview 2.

Node data:

``` r
nodes %>%
  filter(id_interview == 2) %>%
  knitr::kable()
```

| id\_interview | id\_node | is\_ego | is\_polish | department | scidegree | female |
| ------------: | -------: | ------: | ---------: | ---------: | :-------- | -----: |
|             2 |        0 |       1 |          1 |          1 | dr        |      0 |
|             2 |        1 |       0 |          1 |          2 | dr        |      0 |
|             2 |        2 |       0 |          1 |          3 | dr        |      1 |
|             2 |        3 |       0 |          1 |          3 | dr        |      1 |
|             2 |        4 |       0 |          1 |          2 | dr        |      1 |
|             2 |        5 |       0 |          1 |         NA | dr        |      1 |
|             2 |        6 |       0 |          0 |         NA | prof      |      0 |
|             2 |        7 |       0 |          1 |         NA | NA        |     NA |

Collaboration network:

``` r
g <- collaboration %>%
  filter(id_interview == 3) %>%
  select(-id_interview) %>%
  igraph::graph_from_data_frame(directed=FALSE) %>%
  simplify()

xy <- graphlayouts::layout_with_stress(g)

plot(
  g,
  layout=xy,
  vertex.color = "white",
  edge.color = "black",
  vertex.label.color = "black"
)
```

<img src="man/figures/README-example-collaboration-1.png" width="100%" />

Resource flows:

``` r
edb <- resources %>%
  filter(id_interview==3) %>%
  select(-id_interview) %>%
  arrange(from, to)
rg <- graph_from_data_frame(edb)
rnames <- sort(unique(E(rg)$code))
layout(matrix(1:16, 4, 4))
for(r in rnames) {
  rgs <- delete.edges(rg, E(rg)[code != r])
  opar <- par(mar=c(0,0,1,0))
  plot(
    simplify(rgs), 
    layout=xy,
    vertex.color = "white",
    edge.color = "black",
    vertex.label.color = "black",
    main = r
  )
  par(opar)
}
layout(1)
```

<img src="man/figures/README-example-resources-1.png" width="100%" />

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

## License

MIT license, see file [`LICENSE.md`](LICENSE.md).

## Citing

TBA. Please contact the authors for now.

1.  A product of Provalis Research, see
    <https://provalisresearch.com/products/qualitative-data-analysis-software/>
    .
