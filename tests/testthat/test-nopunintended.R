test_that("only take numerics", {
  expect_error(nopunintended(number = "abc"))
  expect_error(nopunintended(number = "1", "2", "3"))
})

test_that("only take numbers between 1 and 33", {
  expect_error(nopunintended(number = 0))
  expect_error(nopunintended(number = -1))
  expect_error(nopunintended(number = 34))
  expect_error(nopunintended(number = 5000))
})

test_that("numbers between 1 and 33 work", {
  expect_no_error(nopunintended(number = NULL))
  expect_no_error(nopunintended(number = 2))
  expect_no_error(nopunintended(number = 22))
})
