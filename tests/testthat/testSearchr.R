context("Searchr")

test_that("Checking if the output is the same", {

  col <- c("movie_title", "director_name", "genres", "actor_1_name", "content_rating")
  expect_equal(colnames(MovieFinder("Avatar")), col)

})
