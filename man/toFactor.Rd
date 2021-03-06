% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toFactor.R
\name{toFactor}
\alias{toFactor}
\title{Convert selected columns of a dataframe to \code{factor}}
\usage{
toFactor(data, variables)
}
\arguments{
\item{data}{a dataframe.}

\item{variables}{a vector of character strings naming the columns of \code{data} to be converted to
class \code{factor}.}
}
\value{
a dataframe with the selected columns of \code{data} (provided by \code{variables} argument)
converted to class \code{factor}.
}
\description{
This function converts user-selected columns of a dataframe to class \code{factor}.
}
\examples{
data(fruitfly)
str(fruitfly)
newfruitfly <- toFactor(fruitfly, variables = c("ID", "Partners", "Type"))
# Check selected variables have been converted to variables
str(newfruitfly)
}
