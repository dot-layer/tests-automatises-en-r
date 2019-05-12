test_that(
  "Tester que donné 1, la moyenne est 1", 
  {
    expected <- 1
    actual <- mean(1)
    expect_equal(expected, actual)
  }
)

test_that(
  "Tester que donné même valeur, la variance est 0", 
  {
    expected <- 0
    actual <- var(1)
    expect_equal(expected, actual)
  }
)
