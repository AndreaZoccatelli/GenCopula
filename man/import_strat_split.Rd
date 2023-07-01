\name{import_strat_split}
\alias{import_strat_split}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Import and split dataset
}
\description{
  Divide the original dataset into train and test set mantaining the same share of minority class (stratified sampling). It returns an S4 object that contains train, test and original dataset.
}
\usage{
  import_strat_split(path, name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path}{
    path where dataset is saved (i.e. "C:/folder/subfolder")
  }
  \item{name}{
    name of the dataset in csv format (i.e. "Dataset.csv")
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
  %% ~put references to the literature/web site here ~
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
