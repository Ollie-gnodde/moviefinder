


movie_disc <- function(genre = NA, rating = 0, director = NA, actor = NA) {

  if ( is.na(genre)) stop ("Please enter a genre for your movie.")

 if (is.na(actor) & is.na(director)) {
   class1 <- (movie_metadata$imdb_score >= rating) & grepl(genre, movie_metadata$genres)

 }

  else if (is.na(actor)) {
   class1 <- (movie_metadata$imdb_score >= rating) & grepl(genre, movie_metadata$genres) & grepl(director, movie_metadata$director_name)

 } else if (is.na(director)) {class1 <- (movie_metadata$imdb_score >= rating) & grepl(genre, movie_metadata$genres) & grepl(actor, movie_metadata$actor_1_name)

 } else {class1 <- (movie_metadata$imdb_score >= rating) & grepl(genre, movie_metadata$genres) & grepl(director, movie_metadata$director_name) & grepl(actor, movie_metadata$actor_1_name)
}


  movie_metadata$movie_title[ class1 ]
}

movie_disc("Comedy", 7, ,"Adam Sandler")

