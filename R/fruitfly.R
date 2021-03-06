#' @name fruitfly
#' @title Sexual activity and the lifespan of male fruitflies
#' @description Two-factor factorial experiment with added control
#' @docType data
#' @format A dataframe with 125 rows and 6 variables:
#' \describe{
#'   \item{ID}{Serial No. (1-25) within each group of 25 (the order in which data points were abstracted)}
#'   \item{Partners}{Number of companions (0, 1 or 8)}
#'   \item{Type}{Type of companion:
#'     \itemize{
#'       \item{0}{ (newly pregnant female)}
#'       \item{1}{ (virgin female)}
#'       \item{9}{ (not applicable when PARTNERS=0)}
#'     }
#'   }
#'   \item{Longevity}{Lifespan, in days}
#'   \item{Thorax}{Length of thorax, in mm (x.xx)}
#'   \item{Sleep}{Percentage of each day spent sleeping}
#' }
#' @source Hanley, J.A. & Shapiro, S.H. (1994) Sexual activity and the lifespan of male fruitflies:
#' A Dataset that gets attention, \emph{Journal of Statistics Education}, \strong{2}.
#' @source Partridge, L. & Farquhar, M. (1981) Sexual Activity and the Lifespan of Male Fruitflies, *Nature*, **294**, 580--581.
"fruitfly"
