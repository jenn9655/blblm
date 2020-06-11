test_that("The blblm package work", {
  fit <- blblm(mpg ~ wt * hp, data = mtcars, m = 3, B = 100)

  expect_s3_class(fit, "blblm")
  expect_vector(confint(fit, c('wt', 'hp')))
  expect_vector(sigma(fit, confidence = TRUE))
  expect_equal(otype(fit), "S3")
})
