\name{read.all}
\alias{read.all}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read FASTA and GBK formatted files
}
\description{
Read nucleic acid sequences from a file in FASTA or GBK format. 
}
\usage{
read.all(file = system.file(""), seqtype = "DNA")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{ The name of the file which the sequences in FASTA or GBK format are to be 
  read from. %\code{\link{getwd}}.
}
  \item{seqtype}{The nature of the sequence. Nowadays only \code{DNA}, in further updates it will be possible to use for  different type of sequences.} 
}
\details{
Fasta is a widely used format in molecular biology. Sequence in FASTA format starts with a single-line description, distinguished by a greater-than `>' symbol,   followed by sequence data on the next lines. %Lines %starting by a semicolon `;' are ignored, as in the original FASTA program (Pearson and Lipman 1988). The %sequence name is just after the `>' up to the next space ' ' character, trailling infos are ignored for the name %but saved in the annotations. 

GenBank format files have the extension GBK, by convention. Files contain fields with different types of information well-labeled. The header of the file has information describing the sequence, such as its  type, shape, length  and source. The features of the genome sequence follow the header, and include protein translations. The DNA sequence is the last element of the file, which ends with (and must include) a soluble slash. Complete genomes in this format are available at the \url{ftp://ftp.ncbi.nih.gov}. 
}
\value{

  \item{Sequence }{The returned list has a component  \code{Sequence} containing the DNA sequence taken from the field ``ORIGIN'' in GenBank. The sequence is a vector of single characters.}
  \item{Locus or accession}{the returned list has a component \code{Locus/Accession} containing the names of the locus or accession number taken from the field ``LOCUS'' or ``ACCESSION'' in GenBank. Also, return sequence length.}
}
%\references{
% Pearson, W.R. and Lipman, D.J. (1988) Improved tools for biological 
%  sequence comparison. \emph{Proceedings of the National Academy 
%  of Sciences of the United States of America}, \bold{85}:2444-2448
%}
\author{Nora M. Villanueva, Marta Sestelo and Javier Roca-Pardinas
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
data(mtDNAhum)

# data<-read.all("file.fasta")
# data<-read.all("file.gbk")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{fasta}
\keyword{gbk}
\keyword{sequence}