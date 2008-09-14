\name{gtm_pmd}
\alias{gtm_pmd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the posterior mode projection of data into the latent space }
\description{
 The posterior mode projection of a point from the target space, t, is 
 the mode of the corresponding posterior distribution induced in the latent space.
}
\usage{
modes = gtm_pmd(T, X, FI, W)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{T}{ data points representing the distribution in the target space. N-by-D  }
  \item{X}{ data points forming a latent variable sample of the distribution in the latent space. K-by-L }
  \item{FI}{activations of the basis functions when fed X; K-by-(M+1)  }
  \item{W}{a matrix of trained weights  }
}
\value{
\code{modes} - the posterior modes in latent space. N-by-L 
}
\seealso{\code{\link{gtm_ppd1}}, \code{\link{gtm_ppd2}}, \code{\link{gtm_pmn}}, }
\examples{
  lv = gtm_demo()
  gtm_pmd(lv$T, lv$X, lv$FI, lv$W)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster}
\keyword{models}
