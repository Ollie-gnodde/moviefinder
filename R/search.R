
library(dplyr)



MovieFinder <- function(movie_title_search){

  if(!any(grepl(movie_title_search, movie_metadata$movie_title))) stop("This movie does not exist in this dataset")
  searchMovie <- filter(movie_metadata, grepl(movie_title_search, movie_metadata$movie_title))

  select(searchMovie, movie_title, director_name, duration, genres, actor_1_name, content_rating, imdb_score)

}


