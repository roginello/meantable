% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comparisonNames2df.R
\name{comparisonNames2df}
\alias{comparisonNames2df}
\title{Split vector of comparison names into individual columns}
\usage{
comparisonNames2df(comparisonNames, split.at, varNames)
}
\arguments{
\item{comparisonNames}{a vector of character strings containing the names of the
treatment combinations in each pairwise comparison of means, usually the first column of
the post-hoc tests summary table generated by \code{makeSummaryTable}.}

\item{split.at}{vector of characters that indicate where character strings in
\code{comparisonNames} should be disaggregated.}

\item{varNames}{a character vector of factor and/or variable names corresponding to
their concatenated values used to form each treatment (or treatment combination) in
\code{comparisonNames}. The order of the factor/variable names must correspond with the order
their evels/values appear in each treatment combination of \code{comparisonNames}.}
}
\value{
a dataframe with twice as many columns as there are names (factors and/or variables)
provided to \code{varNames} and as many rows as there are comparison names in
\code{comparisonNames}. See \code{Details}.
}
\description{
This function decomposes a vector of treatment comparison names, where each element of the
vector is a character string of the form "\code{Treatment1-Treatment2}", into a dataframe of
individual columns corresponding to each factor which makes up the factorial treatment
combination of \code{Treatment1} and \code{Treatment2}. It is assumed that \code{Treatment1}
and \code{Treatment2} are character strings constructed from the concatenation of some
combination of the levels of a set of factors from a particular factorial treatment combination
in a designed experiment. (See, for example, the comparison names generated by
\code{getComparisonNames}.)
}
\details{
This function decomposes a character vector whose elements are character strings,
each describing a pair of treatments being compared, into the individual factor-level names
contributing to each treatment name. For instance, in an experiment with two treatment factors
\code{Fac1}, with levels \code{a} and \code{b}, and \code{Fac2}, with levels \code{A} and
\code{B}, there are four factorial treatment combinations, namely \code{a,A}, \code{b,A},
\code{a,B}, \code{b,B}. A comparison of the means of \code{a,A} and \code{b,A}
might have comparison name \code{a,A-b,A}. \code{comparisonNames2df} will decompose this
character string into its four components, putting \code{a}, \code{A}, \code{b} and \code{A}
into four columns of a dataframe with column names \code{Fac11}, \code{Fac21}, \code{Fac12} and
\code{Fac22} respectively. Replacing the \code{Comparison} column in the summary table produced
by \code{makeSummaryTable} facilitates reordering and/or subsetting the summary table.
}
\examples{
library(predictmeans)
library(nlme)
Oats$nitro <- factor(Oats$nitro)
fm <- lme(yield ~ nitro*Variety, random=~1|Block/Variety, data=Oats)

# library(lme4)
# fm <- lmer(yield ~ nitro*Variety+(1|Block/Variety), data=Oats)

pm <- predictmeans(fm, "nitro:Variety", pairwise=TRUE, plot=FALSE)
oats.tab <- makeSummaryTable(pm)

comparisonNames2df(oats.tab[,1], split.at = ":", varNames = c("nitro", "Variety") )
}
\seealso{
\code{\link[ruggi]{makeComparisonNames}}
}
\author{
Katya Ruggiero
}
