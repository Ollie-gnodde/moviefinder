


movie_disc <- function(g = NA, i = 0, d = NA, a = NA) {

  if ( is.na(g)) stop ("Please enter a genre for your movie.")

 if (is.na(a) & is.na(d)) {
   class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres)

 }

  else if (is.na(a)) {
   class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(d, movie_metadata$director_name)

 } else if (is.na(d)) {class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(a, movie_metadata$actor_1_name)

 } else {class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(d, movie_metadata$director_name) & grepl(a, movie_metadata$actor_1_name)
}


  movie_metadata$movie_title[ class1 ]
}



