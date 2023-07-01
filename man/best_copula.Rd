\name{best_copula}
\alias{best_copula}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select the best fitting copula
}
\description{
Selects the copula that best fits the joint distribution of the training set according to ten-fold crossvalidated log-likelihood. The candidate copulas are: normal, t, Joe, Clayton and Gumbel. It returns an array with the copulas ranked by decreasing fitting scores.
}
\usage{
best_copula(train)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
the training set
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
The function for crossvalidated log-likelihood is taken from "copula" package: https://search.r-project.org/CRAN/refmans/copula/html/xvCopula.html
}
\author{
Andrea Zoccatelli
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
