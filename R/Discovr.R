
#' Discover Movies Based on your Preferences
#'
#' @param genre the genre of the movie that you are interested
#' @param rating the rating of the movie that you are interested
#' @param director the director of the movie that you are interested
#' @param actor the actor of the movie that you are interested
#' @return movie_title
#' @export
#' @examples
#' movie_disc("Action", 7, "Ridley Scott", "Mark Addy" )
#' movie_disc("Action", 5, ,"Tom Cruise")

movie_disc <- function(genre = NA, rating = 0, director = NA, actor = NA) {

  if ( is.na(genre)) stop ("Please enter a genre for your movie.", call. = FALSE)

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
