\name{read.genbank}
\alias{read.genbank}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read DNA sequences from GenBank via internet
}
\description{
This function connects to the GenBank database, and reads nucleotide sequences using locus code given as arguments.
}
\usage{
read.genbank(locus)
}
\arguments{
  \item{locus}{ Vector of mode character giving the  locus code or accession number.
}
}
\details{
This function uses the site \url{http://eutils.ncbi.nlm.nih.gov/entrez/eutils/} (E-utilities) from where the sequences are downloaded. E-utilities are a set of eight server-side programs that provide a stable interface into the Entrez query and database system at the National Center for Biotechnology Informatio (NCBI). The E-utilities use a fixed URL syntax that translates a standard set of input parameters into the values necessary for various NCBI software components to search for and retrieve the requested data. The E-utilities are therefore the structured interface to the Entrez system, which currently includes 38 databases covering a variety of biomedical data, including nucleotide and protein sequences, gene records, three-dimensional molecular structures, and the biomedical literature.
}
\value{
  \item{Sequence}{The returned list has a component  \code{Sequence} containing the DNA sequence taken from the field ``ORIGIN'' in GenBank. The sequence is a vector of single characters.}
  \item{Locus or accession}{The returned list has a component \code{Locus/Accession} containing the names of the locus or accession number taken from the field ``LOCUS'' or ``ACCESSION'' in GenBank.}
 \item{Species}{The returned list has an attribute \code{Species} containing the names of the species taken from the field ``ORGANISM'' in GenBank.}
}
\references{
Bethesda M. D. (2010) Entrez Programming Utilities Help. NCBI Help Manual. NCBI, USA
}
\author{
Nora M. Villanueva, Marta Sestelo and Javier Roca-Pardinas.
}
\note{
If the computer is not connected to the internet, this function will not work.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
library(seq2R)
## load human mitochondrial DNA sequence
mthumanDNA <- read.genbank("NC_012920")
mthumanDNA
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{read}
\keyword{GenBank}
\keyword{database}
