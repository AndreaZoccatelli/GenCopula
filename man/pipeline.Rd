\name{pipeline}
\alias{pipeline}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cross validation pipeline
}
\description{
The complete stratified cross validation pipeline, used to compare the performance of untuned models trained on the regular dataset with the one obtained with the same models fitted on the augmented traing set. The main objective of the pipeline is to find the optimal value for "share", the tuning parameter that controls how many synthetic observations will be added to the training set.
}
\usage{
pipeline(train, id, models = c("Logistic", "RandForest", "XGBoost"), share, best_copula_i, outliers_r = 1, nearest = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
    the training set.
  }
  \item{id}{
    the cross validation index found with the function "stratify".
  }
  \item{models}{
    the string vector with the names of the models that will be used in the pipeline. The supported models are: c("Logistic", "RandForest", "XGBoost"), it is
    possible to keep all of them or to select only few.
  }
  \item{share}{
    allows to choose how many observations will be sampled from a copula as a share of the existing minority class. I.e. if the total of minority class observations
    is 100 and selected share is 0.8, a total of 80 observations will be added to the training set. For the tuning process share needs to be an array with the values     that needs to be tested (for example share = c(0.2, 0.4, 0.6, 0.8, 1)).
  }
  \item{best_copula_i}{
    the best fitting copula index found with the function "best_copula".
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
