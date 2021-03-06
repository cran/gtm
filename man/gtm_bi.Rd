\name{gtm_bi}
\alias{gtm_bi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calculate an initial value for beta}
\description{
 The value is calculated from the average distance 
 between the nearest neighbours in Y, the centres of the constrained 
 Gaussian mixture generated in the target space from latent sample. 
}
\usage{
beta = gtm_bi(Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Y}{ a matrix containing the positions of the centres of the
   Gaussian mixture induced in target space from the latent variable samples. }
}
\value{
  \code{beta} - an initial value for the inverse variance of the Gaussian mixture 
}
\examples{
  T = matrix(3:61/20, ncol=1);
  T = cbind(T, T + 1.25 * sin(2*T));
  # plot of sample data 
  plot(T[,1], T[,2], col='red', pch=21, xlim=c(0, 3.5), ylim=c(0,3.5))
    
  # setup and training
  X = gtm_pts(20)
  MU = gtm_pts(5)
  sigma = 1
  FI = gtm_gbf(MU, sigma, X)
  W = gtm_ri(T, FI);
  Y = FI %*% W;
  
  # plot of initialized data
  matplot(Y[,1], Y[,2], col='green', add=TRUE, type='p', pch=23)
  beta = gtm_bi(Y)
  symbols(x=Y[,1], y=Y[,2], circles=matrix(sqrt(1/beta) ,ncol=1,nrow=nrow(Y)),
     fg="green",add=TRUE, inches=FALSE);
  
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster}
\keyword{models}
