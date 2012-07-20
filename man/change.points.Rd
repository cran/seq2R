\name{change.points}
\alias{change.points}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simple method to detect compositional changes in genomic sequences
}
\description{
\code{change.points} is used to detect changes at genomic sequences composition. The method is based on fitting nonparametric models by using local linear kernel smoothers. 
}
\usage{
change.points(x,kbin= 300, p= 3, h=-1, W= 1, nboot=100, kernel="gaussian", nh= 30)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Sequences in binary system (by using \code{change.binary} function previously) are to be analyzed from.  
}
  \item{kbin}{
The number of binning nodes over which the function is to be estimated. %Number of equally spaced points at which to estimate the curves. 
}
  \item{p}{
Degree of the polynomial. By default \code{p=3}.
}
  \item{h}{
The kernel bandwidth or smoothing parameter. Large values of bandwidth make smoother estimates, smaller values of bandwidth make less smooth estimates. The default \code{h=-1} is a bandwidth compute by cross validation.
}
  \item{W}{
Weights.
}
 \item{nboot}{
Number of bootstrap repeats.
}
\item{kernel}{
Character which denotes the kernel function (a symmetric density). By default \code{kernel = "gaussian"}, this is, the Gaussian density function. Also, other types of kernel functions can be used: Epanechnikov and triangle, \code{kernel="Epanech"} and \code{kernel="triang"}, respectively.
}
\item{nh}{Number that it will be used to calculate the grid of bandwidths in a range between 0 and 1. In this grid, it will be selected the optimum bandwidth by cross-validation.If the optimum bandwidth value is close to 0, we will obtain rough estimates; when it is close to 1, we will obtain smooth estimates.
}

}
\details{
For each genomic sequence the AT and CG skews profiles were calculated as \eqn{A vs. T = (A-T)/(A+T)} and \eqn{G vs. C = (G-C)/(G+C)}. 
}
\value{
The function computes and returns a list of short information for a fitted \code{change.points} object.
  \item{Number of A-T base pairs}{The returned value is the total nucleotide  (adenine and thymine) contained at the sequence analyzed.}
 \item{Number of C-G base pairs }{In this case, the returned value is the sum of cytosine and guanine contained at the sequence.}
  \item{Number of binning nodes}{The number of binning nodes over which the function is to be estimated.}
  \item{Number of bootstrap repeats}{Number of bootstrap repeats.}
  \item{Bandwidth}{Value of the kernel bandwidth or smoothing parameter used in the fitting for A vs. T and C vs. G.}
   \item{Exists any critical point}{Emphasize if there is or not any critical.}
}
%\references{
%Pearson, W.R. and Lipman, D.J. (1988) Improved tools for biological %sequence comparison. Proceedings of the National Academy of Sciences of %the United States of America, 85:2444-2448
%}
\author{
Nora M. Villanueva, Marta Sestelo and Javier Roca-Pardinas.
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
library(seq2R)

# human mitochondrial DNA data
mtDNAhuman <- read.genbank("NC_012920")
DNA<- change.binary(mtDNAhuman)
seq1<-change.points(DNA)
seq1
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{change points}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
