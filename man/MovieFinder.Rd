% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{MovieFinder}
\alias{MovieFinder}
\title{Function that gives movie information}
\usage{
MovieFinder(movie_title_search)
}
\arguments{
\item{movie_title_search}{the movie that you want information on}
}
\value{
Movie title, Director name, Genre, Main actors name, Content rating
}
\description{
Necessary package(s): dplyr
}
\examples{
MovieFinder("Avatar")
MovieFinder("The Lord of the Rings")
}
