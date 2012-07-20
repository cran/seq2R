\name{change.binary}
\alias{change.binary}
%- Also NEED an '\alias' for EACH other topic documented here
\title{
Convert biological sequences into binary code
}
\description{
Biological sequences are categorical variables. With this function the four nucleotides are coded with two bits, 0 and 1 (binary numeral system) for being used by almost all modern computers.
}
\usage{
change.binary(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
 The object obtained with \code{\link{read.all}} or \code{\link{read.genbank}} functions is the argument required for \code{change.binary}. The nature of the sequence is DNA. Sequences are returned as a vector of single characters.
}
}
%\details{
%}
\value{
The returned list has two component (\code{$AT}, \code{$CG}). Both of them containing  a matrix  with values about their critical points (maximum and minimum), and their lower  and upper  95\% confidence intervals.
  \item{AT}{Variable A and T with binary system.}
  \item{CG}{Variable C and G with binary system. }
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
mthumanDNA <- read.genbank("NC_012920")
DNA <- change.binary(mthumanDNA)
DNA
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{binary}
\keyword{AT}
\keyword{GC}