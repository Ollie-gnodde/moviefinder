
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
?test_that
?cat
