library(readr)
library("dplyr")
library("magrittr")
movie <- read.csv("~/Desktop/iX/moviefinder/movie_metadata.csv")

MovieFinder <- function(movie_title_search){
  if(!any(grepl(movie_title_search, movie$movie_title))) stop("This movie does not exist in this dataset")
  searchMovie <- filter(movie, grepl(movie_title_search, movie$movie_title))
    #select_(movie$director_name, movie$duration, movie$genres, movie$actor_1_name, movie$content_rating, movie$imbd_score)
  select(searchMovie, movie_title, director_name, duration, genres, actor_1_name, content_rating, imdb_score)

}

MovieFinder("The Lord ")
#, searchMovie$duration, searchMovie$genres, searchMovie$actor_1_name, searchMovie$content_rating, searchMovie$imbd_score)
