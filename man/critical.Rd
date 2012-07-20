\name{critical}
\alias{critical}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Critical points (maxima and minima)
}
\description{
Function that maximizes or minimizes the first derivative of the model obtained with \code{\link{change.points}} function. Also, it is included their 95\% confidence intervals. 
}
\usage{
critical(model, base.pairs = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{\code{change.points} object.}
  \item{base.pairs}{Character string for A vs. T or C vs G.}
}
%\details{
%In mitochondrial genomes, the trend of the skew profile curve changes %abruptly at the replication origins, i. e. the concavity of skew profile %should switch in this region (point of inflection). The first derivative %of the skew profile curve will reach a maximum or minimum value at the %location of replication origins (critical points).  
%}
\value{
The returned list has two component (\code{$AT}, \code{$CG}). Both of them containing  a matrix  with values about their critical points (maxima and minima), lower  and upper 95\% confidence intervals.
  \item{AT }{Critical points for AT.}
  \item{CG }{Critical points for CG.}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Nora M. Villanueva, Marta Sestelo and Javier Roca-Pardinas
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
mthumanDNA <- read.genbank("NC_012920")
DNA <- change.binary(mthumanDNA)
seq1 <- change.points(DNA)

# Critical points CG
critical(seq1,base.pairs="CG")

# Critical points AT
critical(seq1,base.pairs="AT")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
