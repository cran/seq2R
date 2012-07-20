\name{print.change.points}
\alias{print.change.points}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Short change.points summary
}
\description{
\code{\link{change.points}} summary.}
\usage{
\method{print}{change.points}(x=model,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{\code{change.points} object.}
\item{\ldots}{Other options.}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
The function computes and returns a list of short information for a fitted \code{change.points} object.
  \item{Number of A-T base pairs}{The returned value is the total nucleotide  (adenine and thymine) contained in the sequence analyzed.}
 \item{Number of C-G base pairs }{In this case, the returned value is the sum of cytosine and guanine contained at the sequence.}
  \item{Number of binning nodes}{The number of binning nodes over which the function is to be estimated.}
  \item{Number of bootstrap repeats}{Number of bootstrap repeats.}
  \item{Bandwidth}{Value of the Kernel bandwidth or smoothing parameter used in the fiiting for A vs. T and C vs. G.}
   \item{Exists any critical point}{Emphasize if there is or not any critical.}
}
%\references{
%bibliography
%}
\author{
Nora M. Villanueva, Marta Sestelo and Javier Roca-Pardinas.
}
\note{
See details in \code{\link{change.points}}.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
#library(seq2R)

##### human mitochondrial DNA data
#mtDNAhuman <- read.genbank("NC_012920")
#DNA<- change.binary(mtDNAhuman)
#seq1<-change.points(DNA)
#seq1
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line