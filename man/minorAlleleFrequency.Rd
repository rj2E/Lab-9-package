
\name{minorAlleleFrequency}
\alias{minorAlleleFrequency}
\alias{filterSNPs}
\alias{mafHist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Functions to Work on Minor Allele Frequencies 
}
\description{
Functions will estimate minor allele frequencies. They will also remove SNPs if they dont meet the treshold and plot a histogram of minor allele frequencies. 
}
\usage{
minorAlleleFrequency(SNPMat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SNPmat}{
A numeric matrix of 0, 1, 2, with individuals in rows and SNPs in columns.
}
\item{minMAF}{
A number indicating the minimum minor allele frequency of SNPs to retain in
the dataset.
}
}

\value{
\code{minorAlleleFrequency} returns a vector of minor allele frequencies.
\code{filterSNPs} returns a matrix in the same format as SNPmat, but with
SNPs removed if they did not meet the threshold.  \code{minMAF} returns
nothing but plots a histogram.
}

\author{
L. Clark, revised by RJ Twohey
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# set up a dataset for this example
mySNP <- matrix(sample(c(0, 1, 2), 64, replace = TRUE), nrow = 8, ncol = 8)
# run functions
minorAlleleFrequency(mySNP)
filterSNPs(mySNP)
mafHist(mySNP)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
