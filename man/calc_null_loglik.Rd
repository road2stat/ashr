% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ashutility.R
\name{calc_null_loglik}
\alias{calc_null_loglik}
\title{Compute loglikelihood for data under null that all beta are 0}
\usage{
calc_null_loglik(betahat, betahatsd, df, model = c("EE", "ET"), alpha = 0)
}
\arguments{
\item{betahat}{the data}

\item{betahatsd}{the observed standard errors}

\item{df}{appropriate degrees of freedom for (t) distribution of betahat/sebetahat}

\item{model}{indicates whether you want the likelihood under the EE or ET model}

\item{alpha}{a scalar performing transformation on betahat and sebetahat, such that the model is \eqn{\beta_j / s_j^alpha ~ g()},and eqn{betahat_j / s_j^alpha ~ N(0,(sebetahat^(1-alpha))^2) or student t distribution}. When \eqn{alpha=0} we have the EE model, when \eqn{alpha=1}, we have the ET model. \eqn{alpha} should be in between 0 and 1, inclusively. Default is alpha=0.}
}
\description{
Return the log-likelihood of the data betahat, with standard errors betahatsd, 
under the null that beta==0
}

