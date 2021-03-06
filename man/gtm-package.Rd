\name{gtm-package}
\alias{gtm-package}
\alias{gtm}
\docType{package}
\title{
Generative topographic mapping 
}
\description{
Generative Topographic Mapping (GTM) --- a non-linear latent variable model, intended for modelling continuous, intrinsically low-dimensional probability distributions, embedded in high-dimensional spaces. It can be seen as a non-linear form of principal component analysis or factor analysis. It also provides a principled alternative to the self-organizing map --- a widely established neural network model for unsupervised learning --- resolving many of its associated theoretical problems.

An important, potential application of the GTM is visualization of high-dimensional data. 
Since the GTM is non-linear, the relationship between data and its visual representation may be 
far from trivial.

There are two principal limitations of the basic GTM model. The computational effort required will grow exponentially with the intrinsic dimensionality of the density model. However, if the intended application is visualization, this will typically not be a problem. The other limitation is the inherent structure of the GTM, which makes it most suitable for modelling moderately curved probability distributions of approximately rectangular shape. When the target distribution is very different to that, the aim of maintaining an `interpretable' structure, suitable for visualizing data, may come in conflict with the aim of providing a good density model.

The fact that the GTM is a probabilistic model means that results from probability theory and statistics can be used to address problems such as model complexity. Furthermore, this framework provides solid ground for extending the GTM to wider contexts than that of this thesis. 
re about what it does (maybe more than one line)
}
\details{
\tabular{ll}{
Package: \tab gtm\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2008-09-13\cr
License: \tab GPL 2\cr
LazyLoad: \tab yes\cr
}
In order to see the method illustrated it is recommended to watch \code{\link{gtm_demo}}. 

For building own models, one needs to use \code{\link{gtm_stp1}} or \code{\link{gtm_stp2}} functions
for initial setup and \code{\link{gtm_trn}} function to train model.

To visualize the model properties one can use \code{gtm_pmd()}, \code{gtm_pmn()}, \code{gtm_ppd()}
functions.

Alternative initialization functions include \code{gtm_ri}, \code{gtm_bi}, \code{gtm_hxg} functions.
}
\author{
Based on MATLAB code published by Markus Svensen. 
Converted to R by Ondrej Such.

Maintainer: <ondrejs@savbb.sk>
}
\references{
Bishop, Svensen, Williams: GTM: The Generative Topographic Mapping, Neural Computation 10, no.1 215-234, 1998
\url{http://www.ncrg.aston.ac.uk/GTM/}
}
\keyword{ package }
\examples{
gtm_demo()
}
