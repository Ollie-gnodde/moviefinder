


i <- "imdb_score"
a <- "actor_1_name"
g <- "genres"
d <- "director_name"
movie_data <- movie_metadata


movie_disc <- function(i, g, d, a) {

  if ( missing(i)) stop ("Please enter a minimum imdb rating.")

  if ( missing(g)) stop ("Please enter a genre for your movie.")

 if (missing(a) & missing(d)) {
   class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres)

 }

  else if (missing(a)) {
   class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(d, movie_metadata$director_name)

 } else if (missing (d)) {class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(a, movie_metadata$actor_1_name)

 } else {class1 <- (movie_metadata$imdb_score >= i) & grepl(g, movie_metadata$genres) & grepl(d, movie_metadata$director_name) & grepl(a, movie_metadata$actor_1_name)
}


  movie_metadata$movie_title[ class1 ]
}

movie_disc( 4, , , )

