
#' Function that gives movie information
#'
#' Necessary package(s): dplyr
#'
#' @param movie_title_search the movie that you want information on
#' @return Movie title, Director name, Genre, Main actors name, Content rating
#' @examples
#' MovieFinder("Avatar")
#' MovieFinder("The Lord of the Rings")
#' @export

MovieFinder <- function(movie_title_search){
  library(dplyr)
  if(!any(grepl(movie_title_search, movie_metadata$movie_title))) stop("This movie does not exist in this dataset")
  searchMovie <- filter(movie_metadata, grepl(movie_title_search, movie_metadata$movie_title))
  select(searchMovie, movie_title, director_name, genres, actor_1_name, content_rating)

}

