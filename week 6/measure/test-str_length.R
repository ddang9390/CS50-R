library(stringr)
library(testthat)

test_that("str_length returns correct number of characters", {
  expect_equal(str_length(""), 0)
  expect_equal(str_length("  "), 2)
  expect_equal(str_length("hi there"), 8)
})

test_that("str_length handles special values properly", {
  expect_equal(str_length("😊"), 1)
  expect_equal(str_length("汉字"), 2)
  expect_equal(str_length(11), 2)
})

test_that("str_length handles errors properly", {
  expect_error(str_length())
  expect_error(str_length(str_length))
})

test_that("str_length handles vector inputs properly", {
  test <- c("word", "1", 21)
  expect_equal(str_length(test), c(4, 1, 2))
})