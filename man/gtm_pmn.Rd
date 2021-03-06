\name{gtm_pmn}
\alias{gtm_pmn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculates the posterior mean projection of data into the latent space }
\description{
 The posterior mean projection of a point from the target space, t, is the mean 
 of the corresponding posterior distribution induced in the latent space. 
}
\usage{
means = gtm_pmn(T, X, FI, W, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{T}{ data points representing the distribution in 
     the target space. N-by-D  }
  \item{X}{ data points forming a latent variable sample 
     of the distribution in the latent space. K-by-L}
  \item{FI}{ activations of the basis functions when fed X; K-by-(M+1)  }
  \item{W}{ a matrix of trained weights }
  \item{b}{ the trained value for beta}
}
\value{
\code{means} - the posterior means in latent space. N-by-L 
}
\seealso{\code{\link{gtm_ppd1}},\code{\link{gtm_ppd2}} \code{\link{gtm_pmd}}}
\examples{
   lv = gtm_demo()
   gtm_pmn(lv$T, lv$X, lv$FI, lv$W, lv$beta)
 

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster}
\keyword{models}
