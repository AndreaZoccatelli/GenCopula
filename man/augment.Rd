\name{augment}
\alias{augment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Augment the minority class of a dataset.
}
\description{
  Augment the minority class of a training set with binary response variable using sampling from a copula and optional filtering techniques: outliers removal using Mahalanobis distance from the center of generated data and Euclidean distance from the medoid of the original minority class.
}
\usage{
  augment(train, best_copula_i, minority, share, outliers_r, nearest)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
    the training set.
  }
  \item{best_copula_i}{
    the best fitting copula index found with the function "best_copula".
  }
  \item{minority}{
    the minority class of the training set found with the function "extract_minority".
  }
  \item{share}{
    allows to choose how many observations will be sampled from a copula as a share of the existing minority class. I.e. if the total of minority class observations
    is 100 and selected share is 0.8, a total of 80 observations will be added to the training set.
  }
  \item{outliers_r}{
    a flag that when equal to 1 allows to remove the outliers from the observations sampled from the copula.
  }
   \item{nearest}{
    a flag that when equal to 1 allows to keep only the 50\% of sampled observations that are nearest to the medoid of the original minority class.
    The quantity of added observations is the same, because in this case the share will be doubled automatically before filtering.
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
  The observations are sampled from the selected copula using the function "rCopula" from the library copula: \href{https://search.r-project.org/CRAN/refmans/copula/html/Copula.html}{rCopula}

  The function for Mahalanobis distance is taken from "stats": \href{https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/mahalanobis}{Mahalanobis}

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
