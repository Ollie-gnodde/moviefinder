
context("Discovr")

test_that("Checking if all the variables are in place", {
  expect_equal(substr(movie_disc("Romance", 7, "Richard Donner", "Marlon Brando"),
    1,
    nchar(movie_disc("Romance", 7, "Richard Donner", "Marlon Brando"))-1),
    "Superman")

  expect_equal(substr(movie_disc("Comedy", 5, "Pete Docter", "Buscemi"),
                      1,
                      nchar(movie_disc("Comedy", 5, "Pete Docter", "Buscemi"))-1),
               "Monsters, Inc.")

})

 test_that("Checking if actor is left out", {
  expect_equal(substr(movie_disc("Romance", 7, "Richard Donner", "Marlon Brando"),
  1,
  nchar(movie_disc("Romance", 7, "Richard Donner", ))-1),
  "Superman" )


 expect_equal(substr(movie_disc("Comedy", 5, "Adam Rifkin",  ),
                     1,
                     nchar(movie_disc("Comedy", 5, "Adam Rifkin", ))-1),
              c("Detroit Rock City", "Shooting the Warwicks"))


 })


 test_that("Checking if actor and director is left out", {
   expect_equal(substr(movie_disc("Western", 8.4, , ),
                       1,
                       nchar(movie_disc("Western", 8.4, , ))-1),
                c("Django Unchained", "Once Upon a Time in the West", "The Good, the Bad and the Ugly") )


   expect_equal(substr(movie_disc("Thriller", 8.8, ,  ),
                       1,
                       nchar(movie_disc("Thriller", 8.8, ,  ))-1),
                c("The Dark Knight", "Inception", "Daredevil", "Fargo"))


 })




