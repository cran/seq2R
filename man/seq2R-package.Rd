\name{seq2R-package}
\alias{seq2R-package}
\alias{seq2R}
\docType{package}
\title{
Simple method to detect compositional changes in genomic sequences
}
\description{\code{seq2R} is just a shortcut for "sequence to \code{R}". This software is useful for loading .fasta or .gbk files, and for recovering sequences from GenBank database.
This package allows  to detect differences or asymmetries based on nucleotide composition by using local linear kernel smoothers. Also, it is possible to draw inference about critical points (i. e. maximum or minimum points) related with the derivative curves. Additionally, bootstrap methods have been used  for estimating confidence intervals and speed computational techniques (binning techniques) have been implemented in "seq2R".
}
\details{
\tabular{ll}{
Package: \tab seq2R\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-01-08\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
In the package are included several functions that enable users to analyze asymmetries based on nucleotide composition of the DNA sequences. It is useful for loading different types of files (\code{\link{read.all}} function), and for retrieving sequences from GenBank dataset (\code{\link{read.genbank}} function). After reading the sequence, it is necessary to convert the character vector into a binary code, by applying \code{\link{change.binary}} function. At this point, it is possible to apply the \code{\link{change.points}} function, for fitting nonparametric regression models and obtaining the estimates and their first derivatives. The object obtained with this function is the argument required for \code{\link{plot.change.points}} function which provides a graphical output. Finally, to determine the position of the critical points (maxima or minima), only applying \code{\link{critical}} function can be obtained.
}
\author{
Nora M. Villanueva and Marta Sestelo.

Maintainer: Nora M. Villanueva <nmvillanueva@uvigo.es>
}
\references{
Efron, B. (1979). Bootstrap methods: another look at the jackknife. Annals of Statistics, 7:1-26.

Efron, E. and Tibshirani, R. J. (1993). An introduction to the Bootstrap. Chapman and Hall, London.

Fan, J. and Marron, J.S. (1994). Fast implementation of nonparametric curve estimators. Journal of Computational and Graphical Statistics, 3:35-56.

Hastie, T. and  Tibshirani, R. (1990). Generalized additive models. Chapman and Hall, London.

Stone, C. J. (1977). Consistent nonparametric regression. Annals of Statistics, 5: 595-620.

Wand, M. P. and Jones, M. C. (1995). Kernel Smoothing. Chapman and Hall, London.
}

