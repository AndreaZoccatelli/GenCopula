\name{nearest}
\alias{nearest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Keep the 50\% of synthetic observations nearest to the original minority class.
}
\description{
It filters the synthetic observations by selecting only the 50\% of them that are nearest to the medoid of the original minority class.
}
\usage{
nearest(minority, generated)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{minority}{
a dataframe with the original observations that belong to minority class.
}
\item{generated}{
a dataframe with the synthetic observations.
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
  The medoid is computed using the function "medoids" from GDAtools see p.63 of: \href{https://cran.r-project.org/web/packages/GDAtools/GDAtools.pdf}{medoids}
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
