
context("Discovr")

test_that("Checking if all the variables are in place", {
  expect_equal(substr(movie_disc("Romance", 7, "Richard Donner", "Marlon Brando"),
    1,
    nchar(movie_disc("Romance", 7, "Richard Donner", "Marlon Brando"))-1),
    "Superman")

  #expect_equal(movie_disc(""Comedy", 5, "Pete Docter", "Buscemi"), 'Monsters, Inc.')
})

#test_that("Checking if actor is left out", {
 # expect_equal(movie_disc("Romance", 7, "Richard Donner", ), Superman )
  #expect_equal(movie_disc("Comedy", 5, "Adam Rifkin", ), Detroit Rock City, Shooting\ the\ Warwicks)



#})
?test_that
